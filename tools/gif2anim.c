#include <stdint.h>
#include <stdio.h>
#include <alloca.h>
#include <string.h>
#include <sys/stat.h>
#include <errno.h>
#include "libplum.h"

#define elog(...) fprintf(stderr, __VA_ARGS__)
//#define dlog(...) fprintf(stderr, __VA_ARGS__)
#define dlog(...)
#define elogfunc(msg) fprintf(stderr, "%s: %s\n", __func__, msg)

enum
{
  SUCCESS,
  E_LOAD_IMAGE,
  E_MAP_NEW_FRAME,
  E_SAVE_IMAGE,
  E_SAVE_ANIM,
  E_IMAGE_UNACCEPTABLE
};

#define ERROR 1

#define FRONT_FILENAME "front.png"
#define ANIM_FILENAME "anim.asm"


static int _do (const char *in, const char *outpath);

static int get_frame_durations (struct plum_image *im, uint64_t *durations);

static uint32_t fnv1a(const char *k, size_t n);

typedef struct
{
  int old_index;
  int new_index;
} FrameIndexTranslation;

typedef struct Entry
{
  uint32_t hash_key;
  FrameIndexTranslation f;
  struct Entry *next_hash; // collisions
  struct Entry *next_ord; // insert
} Entry;

typedef struct
{
  Entry **buckets;
  Entry *head;
  Entry *tail;
  size_t size;
  size_t n_items;
} Map;

static void init_map (Map *m, size_t n);
static void map_insert(Map *m, uint32_t h, int old, int new);
static FrameIndexTranslation *lookup(Map *m, uint32_t h);

typedef struct
{
  void *where;
  size_t size;
} MemSpan;

static MemSpan get_frame (struct plum_image *im, int frame_no);

/*
This program takes 2 arguments:
  1. The source gif animation
  2. The output path where the animation is to be exported.
      This must be an empty folder.
*/
int main
(int argc, const char **argv)
{
  const char *in;
  const char *outpath;
  int result;

  if (argc < 3)
  {
    elog("%s source.gif output_path/\n", argv[0]);
    return 0;
  }

  in = argv[1];
  outpath = argv[2];

  result = _do(in, outpath);
  switch (result)
  {
    case SUCCESS:
      break;
    case E_LOAD_IMAGE:
      elog("error loading image %s\n", in);
      break;
    case E_MAP_NEW_FRAME:
      elog("error mapping new frame\n");
      break;
    case E_SAVE_IMAGE:
      elog("error saving image\n");
      break;
    case E_SAVE_ANIM:
      elog("error saving animation\n");
      break;
    case E_IMAGE_UNACCEPTABLE:
      elog("image format is not acceptable\n");
      break;
    default:
      elog("unknown error\n");
      break;
  }
  return result;
}

int _do
(const char *in, const char *outpath)
{
  unsigned int e; // plum errors go here
  int load_flags =
    PLUM_PALETTE_LOAD | PLUM_PALETTE_GENERATE |
    PLUM_SORT_LIGHT_FIRST | PLUM_SORT_EXISTING |
    PLUM_PALETTE_REDUCE;
  struct plum_image *image;
  uint64_t *durations;
  MemSpan cur_frame;
  Map hash_to_orig_frame;
  int new_frame_no;
  int *new_frame_sequence;
  FrameIndexTranslation *found_frame;
  struct plum_image *new_image_unique_frames;
  uint32_t *transparent_color;
  int png_frame_index;
  Entry *iter_key;
  uint8_t *canvas;
  struct stat st;
  char *filename_front;
  char *filename_anim;
  const double frames_a_second = (double)1000 / (double)60;
  const double nanosecond = (double)1000000;
  FILE *anim_file;

  // load the image
  image = plum_load_image(in, PLUM_MODE_FILENAME, load_flags, &e);
  if (e > 0)
  {
    elog("error loading image: %s\n",
      plum_get_error_text(e)
    );
    return E_LOAD_IMAGE;
  }

  // image should be a square
  if (image->width != image->height)
  {
    elog("loaded image is not square-sized (%dx%d)\n",
      image->width,
      image->height
    );
    return E_IMAGE_UNACCEPTABLE;
  }

  // and its size a multiple of 8
  if (image->width % 8 != 0)
  {
    elog("image size must be divisible by 8, currently %d (closest: %d)\n",
      image->width,
      ((image->width / 8) + 1) * 8
    );
    return E_IMAGE_UNACCEPTABLE;
  }

  // get frame durations
  durations = alloca(sizeof(*durations) * image->frames);
  if (get_frame_durations(image, durations) != SUCCESS)
  {
    elog("cannot get frame durations\n");
    return E_LOAD_IMAGE;
  }

  dlog("image size: %dx%d\n", image->width, image->height);
  for (size_t i = 0; i < image->frames; i++)
  {
    dlog("dur #%ld -> %ld\n", i, durations[i]);
  }

  init_map(&hash_to_orig_frame, 8); // hmm...
  new_frame_no = 0;
  new_frame_sequence = alloca(sizeof(*new_frame_sequence) * image->frames);

  for (size_t i = 0; i < image->frames; i++)
  {
    cur_frame = get_frame(image, i);
    if (cur_frame.where == NULL)
    {
      return E_MAP_NEW_FRAME;
    }
    uint32_t frame_hash = fnv1a(cur_frame.where, cur_frame.size);

    dlog("frame %ld, hash: %04x\n", i, frame_hash);

    found_frame = lookup(&hash_to_orig_frame, frame_hash);
    if (found_frame)
    {
      // have already seen this frame before, so just add that
      dlog("this frame found\n");
      new_frame_sequence[i] = found_frame->new_index;
    }
    else
    {
      // see a new frame, add a new entry
      dlog("new frame\n");
      map_insert(&hash_to_orig_frame, frame_hash, i, new_frame_no);
      new_frame_sequence[i] = new_frame_no;
      new_frame_no++;
    }
  }
  
  dlog("image new frame sequence:\n");
  for (size_t i = 0; i < image->frames; i++)
  {
    dlog("%d\n", new_frame_sequence[i]);
  }

  // make a new image containing all the unique frames
  new_image_unique_frames = alloca(sizeof(*new_image_unique_frames));
  memset(new_image_unique_frames, 0, sizeof(*new_image_unique_frames));

  new_image_unique_frames->type = PLUM_IMAGE_PNG;
  new_image_unique_frames->max_palette_index = image->max_palette_index;
  new_image_unique_frames->color_format = image->color_format;
  new_image_unique_frames->palette = image->palette;
  new_image_unique_frames->frames = 1;
  new_image_unique_frames->width = image->width;
  new_image_unique_frames->height = image->height * hash_to_orig_frame.n_items;
  canvas = calloc(1, new_image_unique_frames->width * new_image_unique_frames->height);

  transparent_color = NULL;
  // check if the image has a transparent color
  for (size_t i = 0; i < image->max_palette_index; i++)
  {
    uint32_t which_color = (image->palette32[i] >> 24) & 0xff;
    if (image->color_format == PLUM_COLOR_32 && which_color == 0xff)
    {
      transparent_color = alloca(sizeof(*transparent_color));
      *transparent_color = i;
    }
  }

  png_frame_index = 0;
  iter_key = hash_to_orig_frame.head;
  while (iter_key)
  {
    int got_png_frame_num = iter_key->f.old_index;
    MemSpan extract_result = get_frame(image, got_png_frame_num);
    if (extract_result.where == NULL)
    {
      return E_MAP_NEW_FRAME;
    }
    if (transparent_color)
    {
      uint32_t which_transparent = *transparent_color;

      // copy this frame repeatedly up until the end of the array
      // keeping in mind not to transfer the transparent color
      for (size_t i = png_frame_index; i < hash_to_orig_frame.n_items; i++)
      {
        for (size_t j = 0; j < extract_result.size; j++)
        {
          if (((uint8_t*)extract_result.where)[j] != (uint8_t)which_transparent) {
            canvas[(i * extract_result.size) + j] = ((uint8_t*)extract_result.where)[j];
          }
        }
      }
    }
    else
    {
      // simply copy the frame to the new image
      memcpy(
        &canvas[png_frame_index * extract_result.size],
        extract_result.where,
        extract_result.size
      );
    }
    png_frame_index++;
    iter_key = iter_key->next_ord;
  }

  // assign new image
  new_image_unique_frames->data = canvas;

  // check directory exists
  if (stat(outpath, &st) != 0)
  {
    elog("can't check directory '%s': %s", outpath, strerror(errno));
    return E_SAVE_IMAGE;
  }

  // save the image
  filename_front = alloca(strlen(outpath) + 1 + sizeof(FRONT_FILENAME) + 1);
  sprintf(filename_front, "%s/%s", outpath, FRONT_FILENAME);
  plum_store_image(new_image_unique_frames, filename_front, PLUM_FILENAME, &e);
  if (e > 0)
  {
    elog("error saving front.png: %s\n",
      plum_get_error_text(e)
    );
    return E_SAVE_IMAGE;
  }

  // save anim.asm
  filename_anim = alloca(strlen(outpath) + 1 + sizeof(ANIM_FILENAME) + 1);
  sprintf(filename_anim, "%s/%s", outpath, ANIM_FILENAME);
  anim_file = fopen(filename_anim, "w");
  if (!anim_file)
  {
    elog("error saving anim.asm: %s\n", strerror(errno));
    return E_SAVE_ANIM;
  }

  for (size_t i = 0; i < image->frames; i++)
  {
    int frame_num = new_frame_sequence[i];
    int frame_length;

    frame_length = (int)(
      (double)durations[i] / nanosecond / frames_a_second
    );

    fprintf(anim_file, "\tframe %2d, %02d\n", frame_num, frame_length);
  }
  fprintf(anim_file, "\tendanim\n");
  fclose(anim_file);

  return SUCCESS;
}

// durations must be `im->frames` wide
int get_frame_durations
(struct plum_image *im, uint64_t *durations)
{
  bool has_frame_durations;
  struct plum_metadata *m;

  if (!im) { elogfunc("no image"); return ERROR;}
  if (!im->metadata) { elogfunc("no metadata"); return ERROR; }
  
  // see if a FrameDuration metadata type exists
  m = im->metadata;
  has_frame_durations = false;
  while (m)
  {
    if (m->type == PLUM_METADATA_FRAME_DURATION)
    {
      has_frame_durations = true;
      break;
    }
    m = m->next;
  }
  if (!has_frame_durations)
  {
    elogfunc("image has no frame duration metadata");
    return ERROR;
  }
  
  // we should get something of METADATA_FRAME_DURATION here
  if ((m->size / sizeof(uint64_t)) != im->frames)
  {
    elogfunc("number of frames does not match number of durations");
    return ERROR;
  }

  // copy it to our working space
  memcpy(durations, m->data, m->size);
  return SUCCESS;
}

uint32_t fnv1a(const char *k, size_t n)
{
  uint32_t hash = 0x811c9dc5;
  const char *kk = k;
  for (size_t i = 0; i < n; i++)
  {
    hash ^= (uint8_t) *kk++;
    hash *= 0x01000193;
  }
  return hash;
}

// error condition: size == 0
MemSpan get_frame (struct plum_image *im, int frame_no)
{
  MemSpan m = { NULL, 0 };
  size_t img_size;
  
  if (!im) { elogfunc("no image"); return m; }
  if ((frame_no < 0) || ((frame_no + 1) > im->frames))
  {
    elog("requested frame: %d\n", frame_no);
    elogfunc("frame out of range");
    return m;
  }
  img_size = (size_t)im->width * (size_t)im->height;
  if (im->palette == NULL)
  {
    switch (im->color_format)
    {
      case PLUM_COLOR_32:
      case PLUM_COLOR_32X:
        img_size *= sizeof(uint32_t);
        break;
      case PLUM_COLOR_64:
        img_size *= sizeof(uint64_t);
        break;
      case PLUM_COLOR_16:
        img_size *= sizeof(uint16_t);
        break;
    }
  }
  m.where = (void *)(im->data + (frame_no * img_size));
  m.size = img_size;
  return m;
}

void init_map (Map *m, size_t n)
{
  m->buckets = calloc(n, sizeof(*m->buckets));
  m->size = n;
  m->head = NULL;
  m->tail = NULL;
  m->n_items = 0;
}

void map_insert(Map *m, uint32_t h, int old, int new)
{
  Entry *new_entry;
  FrameIndexTranslation new_f = {
    .old_index = old,
    .new_index = new,
  };
  uint32_t which_bucket = h % m->size;

  new_entry = malloc(sizeof(Entry));
  new_entry->hash_key = h;
  new_entry->f = new_f;

  // add to hash bucket
  new_entry->next_hash = m->buckets[which_bucket];
  m->buckets[which_bucket] = new_entry;

  // add to order
  new_entry->next_ord = NULL;
  if (m->tail) {
    m->tail->next_ord = new_entry;
    m->tail = new_entry;
  } else {
    m->tail = new_entry;
    m->head = new_entry;
  }

  m->n_items++;
}

FrameIndexTranslation *lookup(Map *m, uint32_t h)
{
  Entry *now;
  uint32_t which_bucket = h % m->size;

  now = m->buckets[which_bucket];
  while (now != NULL)
  {
    if (h == now->hash_key) return &now->f;
    now = now->next_hash;
  }
  
  return NULL;
}
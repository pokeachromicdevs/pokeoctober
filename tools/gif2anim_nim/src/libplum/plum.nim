import ./libplum
import std/paths
import results
export results

{.push raises: [].}

type
  PlumImageType* {.size: sizeof(uint16).} = enum
    ImageGif = 1,
    ImagePng = 2

  PlumLoadMode {.size: sizeof(csize_t).} = enum
    MaxMemorySize = -4,
    ModeCallback = -3,
    ModeBuffer = -2,
    ModeFilename = -1

  # TODO: these values are `or`d together, make
  # this a set instead
  PlumFlags* {.size: sizeof(cuint).} = enum
    Color32 = 0,
    Color64 = 1,
    Color16 = 2,
    Color32x = 3,
    AlphaInvert = 4,
    AlphaRemove = 0x100,
    PaletteLoad = 0x200,
    PaletteGenerate = 0x400,
    PaletteForce = 0x600,
    SortDarkFirst = 0x800,
    SortExisting = 0x1000,
    PaletteReduce = 0x2000

  PlumFrameDisposal* {.size: sizeof(uint8).} = enum
    DisposalNone = 0,
    DisposalBg,
    DisposalPrev,
    DisposalReplace,
    DisposalBgReplace,
    DisposalPrevReplace

  PlumMetadataType* {.size: sizeof(cint).} = enum
    MetaNone = 0,
    ColorDepth,
    Background,
    LoopCount,
    FrameDuration,
    FrameDisposal,
    FrameArea

  PlumRect* = object
    left, top, width, height: uint32

  ImageMetadata* = object
    case metaType*: PlumMetadataType
    of ColorDepth:
      componentDepth*: seq[uint8]
    of Background:
      bgColor*: uint64
    of LoopCount:
      loopCount*: uint32
    of FrameDuration:
      frameDurations*: seq[uint64]
    of FrameDisposal:
      frameDisposals*: seq[PlumFrameDisposal]
    of FrameArea:
      frameAreas*: seq[PlumRect]
    else: discard

  ImageDimensions = tuple
    width: uint32
    height: uint32

  Image* = object
    imageType*: PlumImageType
    format*: PlumFlags
    numFrames*: uint32 = 1
    dimensions*: ImageDimensions = (1, 1)
    metadata*: seq[ImageMetadata]
    #[
    TODO: these vary depending on format,
    they're a flat uint64 for now...
    ]#
    imagePalettes*: seq[uint64]
    imageData*: seq[uint64]

func errorToResult (errorNum: cuint): Result[void, cstring] =
  return errorNum.plumgeterrortext().err()

func loadImage*(filename: Path, loadMode: int): Result[Image, string] =
  var errNum: cuint

  let plumImg = plumLoadImage(
    filename.cstring,
    cast[csize_t](ModeFilename),
    cast[cuint](loadMode),
    errNum.addr
  )

  if errNum > 0:
    return err(
      "While loading " & filename.string & ": " & $(errNum.errorToResult.error())
    )

  var img = Image(
    imageType: cast[PlumImageType](plumImg.typefield),
    format: cast[PlumFlags](plumImg.colorFormat),
    numFrames: plumImg.frames,
    dimensions: (plumImg.width, plumImg.height)
  )

  if plumImg.palette.palettes != nil:
    for i in 0..plumImg.maxPaletteIndex.int:
      case img.format
      of Color16: img.imagePalettes.add plumImg.palette.palettes16[i].uint64
      of Color32, Color32x: img.imagePalettes.add plumImg.palette.palettes32[i].uint64
      of Color64: img.imagePalettes.add plumImg.palette.palettes64[i]
      else: return err("Unknown image format")
    for i in 0..<plumImg.frames*plumImg.width*plumImg.height:
      img.imageData.add plumImg.data.data8[i].uint64
  else:
    for i in 0..<plumImg.frames*plumImg.width*plumImg.height:
      case img.format
      of Color16: img.imageData.add plumImg.data.data16[i].uint64
      of Color32, Color32x: img.imageData.add plumImg.data.data32[i].uint64
      of Color64: img.imageData.add plumImg.data.data64[i]
      else: return err("Unknown image format")

  # walk metadata
  var curMetadata = plumImg.metadata
  while curMetadata != nil:
    let curMetaType = cast[PlumMetadataType](curMetadata.typefield)
    var newMeta: ImageMetadata
    case curMetaType
    of FrameDuration:
      newMeta = ImageMetadata(metaType: FrameDuration)
      for i in 0..<(cast[int](curMetadata.size) div sizeof(uint64)):
        newMeta.frameDurations.add(
          cast[ptr UncheckedArray[uint64]](curMetadata.data)[i]
        )
      img.metadata.add(newMeta)
    of FrameDisposal:
      newMeta = ImageMetadata(metaType: FrameDisposal)
      for i in 0..<(cast[int](curMetadata.size) div sizeof(uint8)):
        newMeta.frameDisposals.add(
          cast[PlumFrameDisposal](
            cast[ptr UncheckedArray[uint8]](curMetadata.data)[i]
          )
        )
      img.metadata.add(newMeta)
    of LoopCount:
      newMeta = ImageMetadata(
        metaType: LoopCount,
        loopCount: cast[ptr uint32](curMetadata.data)[]
      )
      img.metadata.add(newMeta)
    else: discard
    curMetadata = curMetadata.next

  plumDestroyImage(plumImg)
  return ok(img)

proc saveAs*(image: Image, filename: Path): Result[csize_t, string] =
  if image.imageData.len < 1:
    return err("No image data")

  if (
    let requiredLen = image.dimensions.width.int * image.dimensions.height.int * image.numFrames.int
    requiredLen != image.imageData.len
  ):
    return err(
      "Image data size mismatch (" & $image.imageData.len & " vs " & $requiredLen & ")"
    )

  var newPlumImage = structplumimage(
    typefield: cast[uint8](image.imageType),
    colorFormat: cast[uint8](image.format),
    width: image.dimensions.width,
    height: image.dimensions.height,
    frames: 1 # TODO: support frames
  )

  # turn uint64s back into the correct format :(
  if image.imagePalettes.len > 0:
    newPlumImage.maxPaletteIndex = (image.imagePalettes.len-1).uint8

    case image.format
    of Color16:
      var newPals: seq[uint16] = newSeq[uint16](image.imagePalettes.len)
      for i in 0..<image.imagePalettes.len:
        newPals[i] = image.imagePalettes[i].uint16
      newPlumImage.palette.palettes16 = cast[ptr UncheckedArray[uint16]](newPals[0].addr)
    of Color32, Color32x:
      var newPals: seq[uint32] = newSeq[uint32](image.imagePalettes.len)
      for i in 0..<image.imagePalettes.len:
        newPals[i] = image.imagePalettes[i].uint32
      newPlumImage.palette.palettes32 = cast[ptr UncheckedArray[uint32]](newPals[0].addr)
    of Color64:
      newPlumImage.palette.palettes64 = cast[ptr UncheckedArray[uint64]](image.imagePalettes[0].addr)
    else:
      return err("Unknown image format")

    var newData: seq[uint8] = newSeq[uint8](image.imageData.len)
    for i in 0..<image.imageData.len:
      newData[i] = image.imageData[i].uint8
    newPlumImage.data.data8 = cast[ptr UncheckedArray[uint8]](newData[0].addr)
  else:
    case image.format
    of Color16:
      var newData: seq[uint16] = newSeq[uint16](image.imagePalettes.len)
      for i in 0..<image.imageData.len:
        newData[i] = image.imageData[i].uint16
      newPlumImage.data.data16 = cast[ptr UncheckedArray[uint16]](newData[0].addr)
    of Color32, Color32x:
      var newData: seq[uint32] = newSeq[uint32](image.imagePalettes.len)
      for i in 0..<image.imageData.len:
        newData[i] = image.imageData[i].uint32
      newPlumImage.data.data32 = cast[ptr UncheckedArray[uint32]](newData[0].addr)
    of Color64:
      newPlumImage.data.data64 = cast[ptr UncheckedArray[uint64]](image.imageData[0].addr)
    else:
      return err("Unknown image format")

  var errNum: cuint
  let plumImg = plumStoreImage(
    newPlumImage.addr,
    filename.cstring,
    cast[csize_t](ModeFilename),
    errNum.addr
  )
  if errNum > 0:
    return err(
      "While saving " & filename.string & ": " & $(errNum.errorToResult.error())
    )
  return ok(plumImg)

func getFrameOffset*(image: Image, frame: int): int =
  return
    image.dimensions.width.int * image.dimensions.height.int * frame

func getFrameData*(image: Image, frame: int): seq[uint64] =
  return
    image.imageData[
      image.getFrameOffset(frame)..<image.getFrameOffset(frame+1)
    ]

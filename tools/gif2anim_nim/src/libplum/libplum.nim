{.compile: "libplum.c".}

type
  structplummetadata* {.pure, inheritable, bycopy.} = object
    typefield*: cint
    size*: csize_t
    data*: pointer
    next*: ptr structplummetadata

  structplumpalette* {.union, bycopy.} = object
    palettes*: pointer
    palettes16*: ptr UncheckedArray[uint16]
    palettes32*: ptr UncheckedArray[uint32]
    palettes64*: ptr UncheckedArray[uint64]

  structplumdata* {.union, bycopy.} = object
    data*: pointer
    data8*: ptr UncheckedArray[uint8]
    data16*: ptr UncheckedArray[uint16]
    data32*: ptr UncheckedArray[uint32]
    data64*: ptr UncheckedArray[uint64]

  structplumimage* {.pure, inheritable, bycopy.} = object
    typefield*: uint16
    maxpaletteindex*: uint8
    colorformat*: uint8
    frames*: uint32
    height*: uint32
    width*: uint32
    allocator: pointer # should not be accessible
    metadata*: ptr structplummetadata
    palette*: structplumpalette
    data*: structplumdata
    userdata*: pointer

proc plumloadimage*(
  buffer: pointer,
  sizemode: csize_t,
  flags: cuint,
  error: ptr cuint
): ptr structplumimage {.cdecl, importc: "plum_load_image".}

proc plumdestroyimage*(
  image: ptr structplumimage
): void {.cdecl,  importc: "plum_destroy_image".}

proc plumgeterrortext*(
  error: cuint
): cstring {.cdecl, importc: "plum_get_error_text".}

proc plumnewimage*(): ptr structplumimage {.cdecl, importc: "plum_new_image".}

proc plumcopyimage*(
  image: ptr structplumimage
): ptr structplumimage {.cdecl, importc: "plum_copy_image".}

proc plumstoreimage*(
  image: ptr structplumimage,
  buffer: pointer,
  sizemode: csize_t,
  error: ptr cuint
): csize_t {.cdecl, importc: "plum_store_image".}

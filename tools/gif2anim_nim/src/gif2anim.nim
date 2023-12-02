import ./libplum/plum
import std/hashes
import std/tables
import std/sugar
import std/strformat
import std/paths
import docopt

{.push raises: [].}

let doc = """
gif2anim - converts gif animations into Pokemon Crystal
           animation files.

Usage:
  gif2anim <input_file> <target_directory>

Options:
  -h --help     Show usage directions.
"""

proc saveAnimAsm(imgSequence: seq[int], frameDurations: seq[uint64], filename: Path): Result[void, string] =
  try:
    let f = open(filename.string, fmWrite)
    defer: f.close()

    for i in 0..<imgSequence.len:
      f.writeLine "\t" & fmt"frame {imgSequence[i]:2}, {frameDurations[i]:02}"
    f.writeLine "\tendanim"
    return ok()
  except ValueError as e:
    return err(e.msg)
  except IOError as e:
    return err(e.msg)

proc makeAnimFrames(myImage: Image, basedir: Path): Result[void, string] {.raises: [KeyError].} =
  # Hash, [sorted frame position, frame number in original]
  var imgMap = initTable[Hash, array[2, int]]()
  var imgSequence: seq[int] = @[]
  var counter = 0
  for i in 0..<myImage.numFrames.int:
    let hash = myImage.getFrameData(i).hash()
    if imgMap.hasKey(hash):
      imgSequence.add imgMap[hash][0]
    else:
      imgMap[hash] = [counter, i]
      imgSequence.add counter
      counter += 1

  var animImage = Image(
    imageType: ImagePng,
    format: Color32,
    numFrames: 1'u32,
    dimensions: (
      myImage.dimensions[0],
      myImage.dimensions[1] * imgMap.len.uint32
    ),
    imagePalettes: myImage.imagePalettes,
    imageData: newSeq[uint64](
      imgMap.len *
      myImage.dimensions[0].int *
      myImage.dimensions[1].int
    )
  )

  # Reorder images in target file
  for k, v in imgMap:
    animImage.imageData[
      myImage.getFrameOffset(v[0])..<myImage.getFrameOffset(v[0]+1)
    ] = myImage.getFrameData(v[1])

  let frameDurations = collect(newSeq):
    for mt in myImage.metadata:
      if mt.metaType == FrameDuration:
        for i in mt.frameDurations:
          (i.float / 1_000_000 / (1000 / 60)).uint64

  assert imgSequence.len == frameDurations.len

  if (
    let animImageFile = animImage.saveAs(basedir/Path"front.png")
    animImageFile.isErr
  ): return animImageFile.error.err()

  if (
    let animAsmFile = saveAnimAsm(imgSequence, frameDurations, basedir/Path"anim.asm")
    animAsmFile.isErr
  ): return animAsmFile.error.err()

  return ok()

when isMainModule:
  let args = docopt(doc)
  let origImage = loadImage(
    Path($args["<input_file>"]),
    Color32.int or PaletteLoad.int or PaletteGenerate.int or
    SortExisting.int or PaletteReduce.int
  )

  if origImage.isErr:
    debugEcho origImage.error
    quit(1)

  if (
    let animFrames = origImage.value.makeAnimFrames(
      Path($args["<target_directory>"])
    )
    animFrames.isErr
  ):
    debugEcho animFrames.error
    quit(1)


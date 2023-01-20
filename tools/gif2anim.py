#!/usr/bin/env python3

'''
Generates animation frames (front.png) and its corresponding
animation sequence (anim.asm) from a single gif.

Files are output in the specified directory -- or, if
omitted -- the current working directory.

Zumi
'''

from PIL import Image, ImageSequence
import sys
import os
import itertools
import math

try:
	with open(sys.argv[1], 'r') as x:
		pass
except:
	print("usage: gif2anim.py [something.gif] [which directory to]")
	exit(1)
	
if len(sys.argv) > 2:
	dir = sys.argv[2]
else:
	dir = '.'

with Image.open(sys.argv[1]) as gif:
	frames = []
	frame_hashes = []
	anim_sequence = []

	# extract every unique frame
	frame_no = 0
	for frame in ImageSequence.Iterator(gif):
		f_ = frame.copy()
		pixels = f_.getdata()
		hsh = hash(tuple(pixels))
		duration = math.ceil(f_.info['duration']/(1000/60))
		
		# and try to build an animation sequence
		try:
			index = frame_hashes.index(hsh)
			anim_sequence.append({'frame': index, 'duration': duration})
		except ValueError:
			frames.append(f_)
			frame_hashes.append(hsh)
			anim_sequence.append({'frame': frame_no, 'duration': duration})
			frame_no += 1

	img_w, img_h = frames[0].size

	unique_frames = Image.new('RGB', (img_w, img_h*len(frames)), (255, 255, 255))

	# paste in all the frames
	offset = 0
	for frame in frames:
		unique_frames.paste(frame, (0, offset, img_w, offset+img_h))
		offset += img_h

	# extract the palette, sort them from light -> dark
	# and then apply the palette to the frames
	unique_frames_ = unique_frames.convert('P', palette=Image.Palette.ADAPTIVE, colors=4)
	gen_pal = unique_frames_.getpalette()
	gen_pal = ([gen_pal[i:i+3] for i in range(0,len(gen_pal),3)])
	gen_pal = sorted(gen_pal, key=lambda i: sum(i), reverse=True)[:4]
	gen_pal = list(itertools.chain(*gen_pal))
	unique_frames_.putpalette(gen_pal)
	
	unique_frames = unique_frames.quantize(palette=unique_frames_)
	
	# save frames
	unique_frames.save(
		os.path.join(dir,'front.png')
	)
	
	# save anim data
	with open(
		os.path.join(dir,'anim.asm')
	, 'w') as anim_asm:
		for i in anim_sequence:
			anim_asm.write('\tframe %2d, %02d\n' % (i['frame'], i['duration']))
		anim_asm.write('\tendanim\n')

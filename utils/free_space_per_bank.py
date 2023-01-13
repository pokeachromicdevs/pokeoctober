#!/usr/bin/env python3

# -*- coding: utf-8 -*-

import sys
import re
import math
import argparse as AP
from coverage.mapreader import MapReader

def progressbar(percentage, width):
	print("█" * math.floor(percentage/100 * width), end="")
	print("░" * math.ceil((100-percentage)/100 * width))

if __name__ == '__main__':
	parser = AP.ArgumentParser(description='report free space of each section in a .map file')
	parser.add_argument('filename', type=AP.FileType('r'))
	parser.add_argument('--sorted','-s',
		help='sort by largest amount of free space',
		action='store_true'
	)
	args = parser.parse_args()
	
	sortresults = args.sorted
	
	mr = MapReader()
	lines = args.filename.readlines()
	mr.read_map_data(lines)
	
	for section_name, section_content in mr.bank_data.items():
		if section_name != 'hram bank':
			print('%s:\n%s' % (section_name.upper(), '-'*(len(section_name)+1)))
			
			content = section_content.items()
			
			if sortresults:
				content = sorted(list(content), key=lambda x: x[1]['slack'], reverse=True)
			
			for bank_no, bank_contents in content:
				used = bank_contents.get('used', 0)
				free = bank_contents.get('slack', 0)
				perc = (used/(used+free)*100)
				print(
					'   %02x -> %3d%% used (%d bytes free)' %
					(bank_no, perc, free)
				)
				print('   ', end='')
				progressbar(perc, 50)
				for i in bank_contents['sections']:
					print('      %s' % i['name'])
				print()
		

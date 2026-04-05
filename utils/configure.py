#!/usr/bin/env python3
'''
configure.py - Generate build.ninja for ROM build.
Requires tools/ to be built first (make -C tools && ninja -C build.tools).

Usage:
  utils/configure.py [--tools-dir tools] [--build-dir build]
'''

import argparse
import os
import sys
from pathlib import Path
import re

sys.path.insert(0, str(Path(__file__).parent))
import configure_utils
import configure_targets

def main():
  # build command line arguments
  p = argparse.ArgumentParser(description=__doc__)
  p.add_argument('--tools-dir', default='tools',
    help='directory with tool binaries')
  p.add_argument('--build-dir', default='build',
    help='build directory ')
  p.add_argument('--source-dir', default='.',
    help='source directory')
  args = p.parse_args()

  # canonize paths
  tools_dir = Path(args.tools_dir).resolve()
  build_dir = Path(args.build_dir).resolve()
  source_dir = Path(args.source_dir).resolve()

  tools = {
    'scan_includes': configure_utils.find_tool(tools_dir, 'scan_includes'),
    'png_dimensions': configure_utils.find_tool(tools_dir, 'png_dimensions'),
    'pokemon_animation': configure_utils.find_tool(tools_dir, 'pokemon_animation'),
    'pokemon_animation_graphics': configure_utils.find_tool(tools_dir, 'pokemon_animation_graphics'),
    'gfx': configure_utils.find_tool(tools_dir, 'gfx'),
    'lzcomp': configure_utils.find_tool(tools_dir, 'lzcomp'),
    'gbstrim': configure_utils.find_tool(tools_dir, 'gbstrim'),
    'rgbasm': configure_utils.find_sys_tool('rgbasm'),
    'rgblink': configure_utils.find_sys_tool('rgblink'),
    'rgbgfx': configure_utils.find_sys_tool('rgbgfx'),
    'rgbfix': configure_utils.find_sys_tool('rgbfix'),
  }
  # verify that a given tool is found
  for i in tools:
    if tools[i] == None:
      sys.exit('tool %s not found' % i)

  per_asm_deps, all_asm_deps = configure_utils.scan_sources(
    tools['scan_includes'], source_dir, configure_targets.asm_sources)
  
  per_gbs_deps, all_gbs_deps = configure_utils.scan_sources(
    tools['scan_includes'], source_dir, configure_targets.gbs_sources)
  
  # resolve targets from dependencies
  all_deps = list(dict.fromkeys(all_asm_deps + all_gbs_deps))  # deduplicated, order preserved
  targets = configure_utils.resolve_targets(
    all_deps, source_dir, configure_targets.match_rule)

  # Write ninja file
  configure_utils.write_ninja(
    build_dir, source_dir, tools_dir,
    tools, targets,
    per_asm_deps, per_gbs_deps)


if __name__ == '__main__':
  main()
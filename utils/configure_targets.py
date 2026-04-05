'''
Sets up the main sources.
'''

import re

import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))
import configure_utils

# Main ASM sources, these are run against `scan_includes`
# to determine every single dependency.
asm_sources = [
  'audio.asm',
  'home.asm',
  'main.asm',
  'wram.asm',
  'data/text/common.asm',
  'data/maps/map_data.asm',
  'data/pokemon/dex_entries.asm',
  'data/pokemon/egg_moves.asm',
  'data/pokemon/evos_attacks.asm',
  'engine/movie/credits.asm',
  'engine/overworld/events.asm',
  'gfx/pics.asm',
  'gfx/sprites.asm',
]
gbs_sources = [
  'audio.asm',
  'wram.asm',
  'gbs.asm',
]

# For every single dependency, this function is run.
def match_rule(dep: str, targets: dict, source_root: Path) -> dict | None:
  # first, the special cases with its own
  # build targets...

  # from buildroot to buildroot
  g = re.match(r'gfx/pokemon/(.+)/front\.static\.2bpp$', dep)
  if g:
    inputs = (
      'gfx/pokemon/%s/front.2bpp' % (g.group(1)),
      'gfx/pokemon/%s/front.dimensions' % (g.group(1)),
    )
    return (configure_utils.make(source_root, targets,
      'PKMN_STATIC', *inputs), list(inputs))

  # from buildroot to buildroot
  g = re.match(r'gfx/pokemon/(.+)/front\.animated\.2bpp$', dep)
  if g:
    inputs = (
      'gfx/pokemon/%s/front.2bpp' % (g.group(1)),
      'gfx/pokemon/%s/front.dimensions' % (g.group(1)),
    )
    return (configure_utils.make(source_root, targets,
      'PKMN_ANIMATED', *inputs), list(inputs))

  # from buildroot to buildroot
  g = re.match(r'gfx/pokemon/(.+)/front\.animation\.tilemap$', dep)
  if g:
    inputs = (
      'gfx/pokemon/%s/front.2bpp' % (g.group(1)),
      'gfx/pokemon/%s/front.dimensions' % (g.group(1)),
    )
    return (configure_utils.make(source_root, targets,
      'PKMN_ANIM_TMAP', *inputs), list(inputs))

  # from buildroot to buildroot
  g = re.match(r'gfx/pokemon/(.+)/bitmask.asm$', dep)
  if g:
    inputs = (
      'gfx/pokemon/%s/front.animation.tilemap' % (g.group(1)),
      'gfx/pokemon/%s/front.dimensions' % (g.group(1)),
    )
    return (configure_utils.make(source_root, targets,
      'PKMN_BITMASK', *inputs), list(inputs))

  # from buildroot to buildroot
  g = re.match(r'gfx/pokemon/(.+)/frames.asm$', dep)
  if g:
    inputs = (
      'gfx/pokemon/%s/front.animation.tilemap' % (g.group(1)),
      'gfx/pokemon/%s/front.dimensions' % (g.group(1)),
    )
    return (configure_utils.make(source_root, targets,
      'PKMN_FRAMES', *inputs), list(inputs))

  # from buildroot to buildroot
  if dep == 'gfx/intro/fire1.2bpp':
    inputs = (
      'gfx/intro/charizard1.2bpp',
      'gfx/intro/charizard2_top.2bpp',
      'gfx/intro/space.2bpp',
    )
    return (configure_utils.make(source_root, targets,
      'CAT', *inputs), list(inputs))

  # from buildroot to buildroot
  if dep == 'gfx/intro/fire2.2bpp':
    inputs = (
      'gfx/intro/charizard2_bottom.2bpp',
      'gfx/intro/charizard3.2bpp',
    )
    return (configure_utils.make(source_root, targets,
      'CAT', *inputs), list(inputs))

  # from buildroot to buildroot
  if dep == 'gfx/intro/fire3.2bpp':
    inputs = (
      'gfx/intro/fire.2bpp',
      'gfx/intro/unused_blastoise_venusaur.2bpp',
    )
    return (configure_utils.make(source_root, targets,
      'CAT', *inputs), list(inputs))

  # and then, the general cases plus modifiers.

  # .lz from buildroot to buildroot
  g = re.match(r'(.+)\.lz$', dep)
  if g:
    inputs = (
      g.group(1),
    )
    return (configure_utils.make(source_root, targets,
      'LZ', *inputs), list(inputs))
  
  # .2bpp from sourceroot to buildroot
  g = re.match(r'(.+)\.2bpp$', dep)
  if g:
    flags = {}
    inputs = (
      (source_root / Path('%s.png' % (g.group(1)))),
    )
    # File-specific graphics rules.
    if re.match(r'^gfx/pokemon/.+/back\.2bpp$', dep):
      flags['rgbgfx'] = '-h'
    if re.match(r'^gfx/trainers/.+\.2bpp$', dep):
      flags['rgbgfx'] = '-h'
    
    if dep == 'gfx/new_game/shrink1.2bpp':
      flags['rgbgfx'] = '-h'
    if dep == 'gfx/new_game/shrink2.2bpp':
      flags['rgbgfx'] = '-h'
    
    if dep == 'gfx/pokedex/pokedex.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/pokedex/sgb.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/pokedex/slowpoke.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/pokedex/question_mark.2bpp':
      flags['rgbgfx'] = '-h'
    
    if dep == 'gfx/pokegear/pokegear.2bpp':
      flags['rgbgfx'] = '-x2'
    if dep == 'gfx/pokegear/pokegear_sprites.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/mystery_gift/mystery_gift.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/title/crystal.2bpp':
      flags['tools_gfx'] = '--interleave --png=%s' % (inputs[0])
    if dep == 'gfx/title/old_fg.2bpp':
      flags['tools_gfx'] = '--interleave --png=%s' % (inputs[0])
    if dep == 'gfx/title/logo.2bpp':
      flags['rgbgfx'] = '-x 4'
    if dep == 'gfx/trade/ball.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/trade/game_boy_n64.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/slots/slots_1.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/slots/slots_2.2bpp':
      flags['tools_gfx'] = '--interleave --png=%s' % (inputs[0])
    if dep == 'gfx/slots/slots_3.2bpp':
      flags['tools_gfx'] = '--interleave --png=%s --remove-duplicates --keep-whitespace --remove-xflip' % (inputs[0])
    
    if dep == 'gfx/card_flip/card_flip_2.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    
    if dep == 'gfx/battle_anims/angels.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/battle_anims/beam.2bpp':
      flags['tools_gfx'] = '--remove-xflip --remove-yflip --remove-whitespace'
    if dep == 'gfx/battle_anims/bubble.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/battle_anims/charge.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/battle_anims/egg.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/explosion.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/hit.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/horn.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/lightning.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/misc.2bpp':
      flags['tools_gfx'] = '--remove-duplicates --remove-xflip'
    if dep == 'gfx/battle_anims/noise.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/objects.2bpp':
      flags['tools_gfx'] = '--remove-whitespace --remove-xflip'
    if dep == 'gfx/battle_anims/pokeball.2bpp':
      flags['tools_gfx'] = '--remove-xflip --keep-whitespace'
    if dep == 'gfx/battle_anims/reflect.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/rocks.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/skyattack.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/battle_anims/status.2bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    
    if dep == 'gfx/player/chris.2bpp':
      flags['rgbgfx'] = '-h'
    if dep == 'gfx/player/chris_back.2bpp':
      flags['rgbgfx'] = '-h'
    if dep == 'gfx/player/kris.2bpp':
      flags['rgbgfx'] = '-h'
    if dep == 'gfx/player/kris_back.2bpp':
      flags['rgbgfx'] = '-h'
    
    if dep == 'gfx/player/chris_card.2bpp':
      flags['rgbgfx'] = '-h'
    if dep == 'gfx/player/kris_card.2bpp':
      flags['rgbgfx'] = '-h'
    if dep == 'gfx/player/leaders.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/player/chris_fish.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/player/kris_fish.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/battle/dude.2bpp':
      flags['rgbgfx'] = '-h'
    
    if dep == 'gfx/sgb/sgb_border.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/mobile/ascii_font.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/mobile/electro_ball.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/mobile/electro_ball_nonmatching.2bpp':
      flags['tools_gfx'] = '--remove-duplicates --remove-xflip'
    if dep == 'gfx/mobile/mobile_adapter.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    if dep == 'gfx/mobile/mobile_splash.2bpp':
      flags['tools_gfx'] = '--remove-duplicates --remove-xflip'
    if dep == 'gfx/mobile/pichu_animated.2bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    
    if dep == 'gfx/unknown/unknown_egg.2bpp':
      flags['rgbgfx'] = '-h'
    return (configure_utils.make(source_root, targets,
      '2BPP', *inputs, flags=flags), list(inputs))
  
  # .1bpp from sourceroot to buildroot
  g = re.match(r'(.+)\.1bpp$', dep)
  if g:
    flags = {}
    inputs = (
      (source_root / Path('%s.png' % (g.group(1)))),
    )
    # File-specific graphics rules.
    if dep == 'gfx/mail/dragonite.1bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/mail/large_note.1bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/mail/surf_mail_border.1bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/mail/flower_mail_border.1bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/mail/litebluemail_border.1bpp':
      flags['tools_gfx'] = '--remove-whitespace'
    if dep == 'gfx/font/unused_bold_font.1bpp':
      flags['tools_gfx'] = '--trim-whitespace'
    return (configure_utils.make(source_root, targets,
      '1BPP', *inputs), list(inputs))
  
  # .gbcpal from sourceroot to buildroot
  g = re.match(r'(.+)\.gbcpal$', dep)
  if g:
    inputs = (
      (source_root / Path('%s.png' % (g.group(1)))),
    )
    return (configure_utils.make(source_root, targets,
      'GBCPAL', *inputs), list(inputs))
  
  # .dimensions from sourceroot to buildroot
  g = re.match(r'(.+)\.dimensions$', dep)
  if g:
    inputs = (
      (source_root / Path('%s.png' % (g.group(1)))),
    )
    return (configure_utils.make(source_root, targets,
      'DIMENSIONS', *inputs), list(inputs))
  
  # everything else is ignored...
  return ({},[])

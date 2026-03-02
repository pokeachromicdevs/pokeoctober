# Goal

This project's goal is to create a reusable 16-bit engine for Pokémon Crystal, while making as few changes as possible
to the game. In practice, this means:

* The code must be readily reusable by any other project. This implies having as few dependencies as possible; relying
  on other wide-reaching changes (such as changing internal data structures) goes against this goal.
* All of the code must be built upon an unmodified version of Pokémon Crystal, taken from the disassembly repository
  at [pret/pokecrystal][pokecrystal].
* All changes must concern themselves with the implementation of 16-bit indexes. Any auxiliary changes must contribute
  to this goal in some way.
* Within reason, unaffected parts of the code must not be modified, to keep merge conflicts with ROM hacks to a
  minimum and thus facilitate porting.
* Documentation must be clear, comprehensive and good enough to allow people to familiarize themselves with the system
  and implement it in their own ROM hacks. The commit history is considered documentation.

### What this project is not

* This project is not a complete ROM hack. While it does technically fit the definition of a ROM hack (i.e., it is a
  mod of the original engine), it's not intended to be a new game on its own. The sole focus of this project is to
  implement 16-bit indexes.
* This project is not a general engine improvement project. Features unrelated to 16-bit indexes (e.g., introducing
  abilities) are out of scope.
* This project is not a general optimization and cleanup project either. While any new code is expected to be high
  quality, optimizing and cleaning existing code should only be done to the extent those changes help the
  implementation of 16-bit indexes.

[pokecrystal]: https://github.com/pret/pokecrystal

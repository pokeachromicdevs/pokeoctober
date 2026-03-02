# `base-components` branch

The `base-components` branch is a stepping stone towards other branches in the repository. Its purpose is to implement
the basic components that comprise the 16-bit extension, thus separating clearly the implementation of those
components from their later utilization in further extension branches. Therefore, this branch doesn't introduce any
new functionality to the game.

The changes made by this branch include:

* Defining the necessary macros in order to be able to declare a conversion table, as specified in the
  [conversion table][conversion-table] page.
* Declaring the bitmap used for garbage collection in WRAM (`wConversionTableBitmap`), as well as a temporary loop
  counter (`wTempLoopCounter`) used internally by the conversion macro functions. (This loop counter is available for
  the user when the functions defined here aren't executing.)
* Defining all of the table-related macros described in the [conversion macro functions][conversion-macros] and
  [garbage collector][gc] pages.
* Defining all the macros and helper functions necessary to use [indirection tables][indirection-tables].

[conversion-macros]: 16-bit-conversion-macro-functions
[conversion-table]: 16-bit-conversion-table
[gc]: Garbage-collector
[indirection-tables]: Indirection-tables

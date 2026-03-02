# 16-bit conversion macro functions

The 16-bit system isn't just the data structures, but also the code that manipulates them. Considering all conversion
tables in the game will be similar in structure, it would be possible in principle to write a single module to handle
them all and parameterize that module by passing it the values of the constants that define the structure of some
specific conversion table (as described in [the corresponding page][convtable]).

However, for performance reasons, this is a bad idea. Such a function would have to handle many complex alternatives
that would create many different code paths, several of which would probably remain untested, with all decisions and
branching being handled by the GBC in real time. It would also prevent optimizations that are possible for certain
"nice" values of the structural constants, such as the number of entries being less than 127.

Therefore, the code is implemented as a series of macros. For each conversion table that is defined, the corresponding
functions must be defined as well, by invoking the macros. (This turns most functions into one-liners.) There are two
sets of macros: [main function macros][main] and [home call macros][homecall]. The former contain the main functions,
which should be declared in a ROMX bank; the latter contain short snippets intended for ROM0 home calls to those main
functions, which the rest of the code will call. The home call macros also determine the function [signatures].

All of the macros' names begin with three underscores. This signals that the macros are only intended for local usage
in the files that declare the actual functions, not for general purpose usage.

## Main function macros

File: [`engine/16/macros.asm`][mainfile]

This file defines three macros, which should be used to define the three main functions that operate on a single
conversion table: read, write and lock. Reading consists of loading an index for some given ID, which will involve a
table lookup for [table IDs][indextypes]. Writing consists of storing an index in the table, obtaining an ID for it;
if the index is not a [reserved index][indextypes], this will imply retrieving the current ID for that index if it
already exists in the table, or storing it in the table and obtaining an ID for it this way otherwise. Finally,
locking consists of adding an ID to the locked ID list, at a specific position, provided that the ID is a table ID;
the function can also be used to unlock that ID by storing zero in that position of the locked ID list.

(Note that this file also defines macros used to build the garbage collector. Those macros will not be discussed in
this page, but in the [page about the garbage collector][gc].)

All of the macros take two arguments: the label prefix and the constant prefix. These arguments are the same that are
used to [declare the conversion table in WRAM][declaration]. The macros are:

* Read macro: `___conversion_table_load`
* Write macro: `___conversion_table_store`
* Lock macro: `___conversion_table_lock_ID`

Note that the functions that these macros define aren't intended to be called directly; they are intended to be called
through [the home calls][homecall]. Therefore, the actual function signatures won't be described here; they are
declared in comments in the macros if they are needed.

The read and lock functions can be implemented by directly calling the macro, like so:

```
_ConvertSomeIDToIndex:
	___conversion_table_load wSomethingTable, SOMETHING_TABLE

_LockSomeID:
	___conversion_table_lock_ID wSomethingTable, SOMETHING_TABLE
```

On the other hand, the write function requires being immediately followed by the garbage collector, as the macro will
fall through to it if it needs to free up some IDs in order to perform an allocation. Therefore, the definition will
generally look like this:

```
_ConvertSomeIndexToID:
	___conversion_table_store wSomethingTable, SOMETHING_TABLE
	; fallthrough
SomethingTableGarbageCollection:
	; garbage collector goes here
```

The garbage collector must preserve `de` and the WRAM bank, and it will always be called with the WRAM bank set to the
bank of the conversion table. This function will be described in more detail in [the corresponding page][gc].

## Home call macros

File: [`home/16bit.asm`][homefile]

This file defines two macros, which will contain the code that will be actually called by other parts of the game.
There is a single macro that defines the home calls for each of the three functions described in the previous section,
which is parameterized to indicate which function is being called (since the prologue and epilogue that surround the
far call are slightly different for each function); the remaining macro declares a function that retrieves a locked ID
from the locked ID list, which is a short function that doesn't need any ROMX counterpart. The macros are:

* Main macro: `___conversion_table_homecall`
* Locked ID retrieval macro: `___conversion_table_homecall_readlocked`

The main macro takes two arguments: the kind of function being called (`read`, `write`, `lock`) and the name of the
ROMX counterpart that will be called by the home call. This way, the three example functions listed in the previous
section would be complemented by home calls like the following ones:

```
ConvertSomeIDToIndex:
	___conversion_table_homecall read, _ConvertSomeIDToIndex

ConvertSomeIndexToID:
	___conversion_table_homecall write, _ConvertSomeIndexToID

LockSomeID:
	___conversion_table_homecall lock, _LockSomeID
```

The remaining macro is used to define a short function that will retrieve a locked ID given its position, allowing the
remainder of the code to easily read the locked ID table, not just write it. That macro only takes one argument, which
is the label prefix for the table in WRAM, like so:

```
GetSomeLockedID:
	___conversion_table_homecall_readlocked wSomethingTable
```

## Function signatures

The home call macros described in the previous section will define the contents of the user-visible functions in the
home bank, and therefore their signatures, which will be the same for all conversion tables in the game.

All of the functions preserve registers `bc` and `de`. Registers `a` and `hl` are used as inputs and outputs; except
for the return values and the specific cases mentioned below, those registers are always clobbered by the functions.
The flags are likewise clobbered; they are never inputs nor outputs.

The signatures for each function are the following ones:

|Function     |Inputs                                  |Outputs                      |Preserved            |
|:-----------:|:---------------------------------------|:----------------------------|:--------------------|
|Read         |`a`: 8-bit ID                           |`hl`: 16-bit index           |`bc`, `de`           |
|Write        |`hl`: 16-bit index                      |`a`: 8-bit ID                |`bc`, `de`           |
|Lock         |`a`: 8-bit ID (or zero); `l`: position  |None                         |`bc`, `de`, `a`      |
|Get locked ID|`a`: position                           |`a`: 8-bit ID                |`bc`, `de`, `hl`     |

[convtable]: 16-bit-conversion-table
[declaration]: 16-bit-conversion-table#declaration-and-layout
[gc]: Garbage-collector
[homecall]: #home-call-macros
[homefile]: https://github.com/aaaaaa123456789/pokecrystal16/blob/base-components/home/16bit.asm
[indextypes]: 16-bit-conversion-table#operation
[main]: #main-function-macros
[mainfile]: https://github.com/aaaaaa123456789/pokecrystal16/blob/base-components/engine/16/macros.asm
[signatures]: #function-signatures

# Overview

This project intends to create a 16-bit engine for Pokémon Crystal. In other words, it replaces existing 8-bit IDs
with 16-bit values, thus allowing ROM hackers to extend lists of objects (such as Pokémon species) beyond their
current limit of approximately 254.

The core of the project is an index conversion table, which is used to convert 16-bit IDs to 8-bit IDs and vice-versa
on the fly. This approach is based on the fact that the game never uses that many IDs at the same time, and thus 8
bits are sufficient to index the ones that are actually in use by the game at any given point in time; the conversion
table allows transforming those short temporary indexes into longer permanent indexes to be used for table lookups.

The conversion table system is defined through a series of macros, which allow implementing several tables at once for
different kinds of indexes. The code is also defined as macros, since actual parameterization of the code would result
in it being extremely slow; several portions of these macros depend on the various parameters defined for the
conversion table for which they are invoked.

Each kind of index that is extended to 16 bits uses its own conversion table and conversion functions by calling the
corresponding macros. Each branch will focus on one specific kind of index, extending it and updating all of the code
that uses that type of index.

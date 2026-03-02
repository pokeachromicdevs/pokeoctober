# Overview

The game uses indexes for various purposes, which typically involve retrieving data from tables (such as names, base
stats or pictures). While the game typically keeps several of these indexes in memory for various purposes, it rarely
needs to use more than a few dozen indexes of any given kind at once. Therefore, the indexes that are currently in use
by the game can safely be represented in 8 bits, except for specific features (such as loading the entire Pokédex
listing into memory, which is something that the game does).

Since the game runs on an 8-bit machine, it thus becomes considerably advantageous to store indexes in 8 bits. It
helps reduce register pressure (which is a significant problem in the GBC CPU), it means that operations on those
indexes can be carried out faster, and it doesn't require altering any of the in-memory data structures. This is the
reason why the game designers were careful to never exceed the 8-bit limit.

This project extends the indexes to be able to contain 16-bit values, but keeping 8-bit indexes as well. This is done
through a conversion table: a table that matches every 8-bit ID in use with the corresponding 16-bit index. This way,
values in use can be referenced through an 8-bit shorthand that continues to fit in existing data structures and in
CPU registers. When the conversion table fills up, it is automatically garbage collected, freeing up entries for
indexes that are no longer in use. Since the number of indexes in use is typically in the order of a few dozen, and
rarely more than one hundred for any given kind, 8-bit indexes are sufficient for this purpose. The conversion table
takes care of allocating them, and the garbage collector ensures that they don't run out.

The system thus assigns ephemeral 8-bit IDs to every 16-bit index in use, and ensures that back-and-forth conversions
are possible. Since both values refer to the same entity, they can be used interchangeably, thus enabling each portion
of the game to use the index width that is more suitable for its purpose. Static data (such as data in ROM) will
typically use the constant and persistent 16-bit index, while dynamic data in RAM (such as the party) will typically
use the ephemeral but shorter 8-bit ID.

The conversion table and its operation are described in detail in the [Basic components][basic-components] page.

Note: in order to make the documentation clearer, 8-bit IDs and 16-bit indexes are typically referred to explicitly by
their bit widths in it. However, in the actual code, where succintness is more valuable, the terms **ID** and
**index** will invariably refer to the 8-bit and 16-bit quantities respectively.

[basic-components]: Basic-components

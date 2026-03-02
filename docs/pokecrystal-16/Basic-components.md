# Basic components

The core of the 16-bit system as implemented in this repository is the presence of dual indexes: the 8-bit ID and the
16-bit index. Every indexable object (such as a Pokémon species) has a permanent 16-bit index, which is used to locate
its data in the various data tables scattered throughout the ROM. Additionally, objects marked as currently in use
will have a temporary 8-bit ID, assigned on demand, which the game can use to pass around and store in registers or in
8-bit memory locations. This way, existing code which expects to operate on 8-bit quantities can continue working as
before; the 8-bit IDs have a one-to-one correspondence to the 16-bit indexes, allowing table lookups and other similar
routines that need the full 16-bit index to convert as needed.

In order to achieve this duality of indexes, a conversion table is needed, as well as conversion code that will carry
out the conversions and populate the table as the game state evolves. The table also needs to be purged of unused
entries every so often in order to avoid exceeding its capacity. Therefore, the basic components of the system are:

* [Conversion table](16-bit-conversion-table)
* [Conversion macro functions](16-bit-conversion-macro-functions)
* [Garbage collector](Garbage-collector)

Each of these components will be described in its own page.

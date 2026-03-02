# Pokémon index extension branch (`expand-mon-ID`)

This is the first feature branch of the repository, implementing an actual case of 16-bit extension. Pokémon species
IDs are extended to 16 bits, updating the various subsystems that depend on the actual indexes to use the conversion
table created by this branch.

* [Conversion table definition][sec01]
* [Affected subsystems][sec02]
* [Map scripting changes][sec03]
* [Evolutions and learnsets][sec04]
* [Trainer data][sec05]
* [Battle Tower][sec06]
* [Pokédex][sec07]
* [Subsystems using full indexes][sec08]
* [Saving and reloading][sec09]
* [Linking and Time Capsule][sec10]
* [Indirection tables][sec11]

## Conversion table definition

An unused, suitably-aligned region of WRAM bank 2, starting at address $D200, was reserved for the Pokémon index
conversion table, as well as any further conversion tables added by future branches.

The table itself is declared as `wPokemonIndexTable`, with a corresponding set of [parameter constants][table-params]
prefixed by `MON_TABLE`; the values of those parameters are the following:

|Constant                               |Value|
|:--------------------------------------|----:|
|`MON_TABLE_ENTRIES`                    |  100|
|`MON_TABLE_LOCKED_ENTRIES`             |   30|
|`MON_TABLE_CACHE_SIZE`                 |   16|
|`MON_TABLE_SAVED_RECENT_INDEXES`       |    8|
|`MON_TABLE_MINIMUM_RESERVED_INDEX`     |  $FD|

The parameters defined above make the table fit exactly in $100 bytes with no padding. The minimum reserved ID is set
to $FD so eggs can continue using that value: the `EGG` constant is redefined as -3, which will expand as $FD when
used as an 8-bit value and $FFFD when used as a 16-bit value; since $FD is defined as a reserved ID, it will convert
to $FFFD (and vice-versa), making the `EGG` constant valid both as an 8-bit ID and a 16-bit index.

The [home bank functions][home-bank-functions] needed to access this table are declared as `GetPokemonIndexFromID`,
`GetPokemonIDFromIndex`, `LockPokemonID` and `GetLockedPokemonID`. The garbage collector function is also exposed as
`PokemonTableGarbageCollection`.

The garbage collector will look for valid IDs in the following locations to consider them as "in use":

* Party and currently-selected PC box
* Opponent trainer's party
* Roaming Pokémon
* Pokémon left in the Day-Care
* Bug-Catching Contest current Pokémon and results
* Various temporary buffers (`wBattleMon`, `wEnemyMon`, `wTempMon`, `wBufferMon`, odd egg data, base stat data)

## Affected subsystems

The following subsystems in the game were updated to use 16-bit indexes correctly:

* Base data: adapted the helper function `GetBaseData` to do an ID-to-index conversion and fixed other references to
  that data, and removed the species ID from the base data (it is now computed through an index-to-ID conversion).
* Battle functions:
    * `BattleCommand_Critical`, `DittoMetalPowder`, `LightBallBoost` and `ThickClubBoost` use 16-bit indexes for their
      checks.
    * `LoadEnemyMon` checks for Unown's and Magikarp's 16-bit indexes now.
* [Battle Tower trainer data and party validation][sec06]
* Breeding: adapted to use 16-bit indexes all throughout, including when checking for a Ditto, a Togepi or a Nidoran.
* Bug-Catching Contest: all tables and functions were updated to load and use 16-bit indexes.
* [Evolutions, learnsets and egg moves][sec04]
* In-game trades: redesigned the data to contain a 16-bit index for the wanted and given Pokémon, and adapted the
  corresponding functions.
* Intro sequence: updated to use Wooper's 16-bit index.
* Leftover mobile code: fixed for completeness.
* [Link features and Time Capsule][sec10]
* [Map scripts and events][sec03]
* Miscellaneous functions:
    * `IsAPokemon` will now check whether the ID is a valid table ID (or an egg).
    * `MoonBallMultiplier` will properly parse 16-bit species indexes in evolution data. (Also, it now works as
      expected, instead of looking for a non-existent evolutionary item.)
    * `Unreferenced_CorrectPartyErrors` will correctly handle table IDs and correct invalid ones.
* Odd Egg generation: the species is now generated from a 16-bit species index table.
* Overworld:
    * Berry Juice generation will properly check for Shuckle's 16-bit index.
    * Pokémon sprites were adapted the data and functions to index into a 16-bit table.
    * Surf icon now properly checks for Pikachu's 16-bit index.
* Player room's decorations: adapted the data table to contain 16-bit species indexes for decorations based on Pokémon
  sprites (by adding a lookup table) and updated the corresponding functions to read from that table.
* [Pokédex entries and footprints][sec07]
* Pokémon cries: updated to use 16-bit indexes when loading the corresponding cry index.
* Pokémon move screen: updated to check for a valid table ID (instead of an ID no greater than `NUM_POKEMON`) when
  checking for a previous or a next Pokémon in order to display scroll arrows.
* Pokémon names, pics and palettes: adapted the loader functions to do an ID-to-index conversion.
* [Trainer data][sec05]
* Unown's special handling: checks for Unown when displaying or printing a Pokémon's picture, when catching a Pokémon,
  when evolving a Pokémon and when a Pokémon is sent out to battle adapted to check for Unown's 16-bit index.
* Wild Pokémon: updated all wild Pokémon tables to contain 16-bit indexes and fixed the functions that load wild data
  to load those indexes correctly (including performing index-to-ID conversions).

## Map scripting changes

All scripting commands that accept a Pokémon species as an argument (`checkpoke`, `cry`, `getmonname`, `givepoke`,
`giveegg`, `loadwildmon` and `pokepic`) were modified to accept a 16-bit argument. These commands will accept a 16-bit
index directly (and convert to an ID when needed), since their arguments are compile-time constants. (The special
handling of 0 was kept; if the argument is 0, the script variable is taken as an 8-bit ID and used as the species ID.)

In order to allow scripts to convert 16-bit indexes to 8-bit IDs and handle IDs in the script variable adequately, two
new scripting commands were introduced, operating on locked IDs. 8 locked IDs were reserved for maps, which are reset
on map entry (just like the first 8 event flags are), and the new scripting commands operate on these locked IDs.
Regardless of their effective values in the locked ID enumeration, these locked positions are referred to as 1 through
8 in map scripts.

The first command, `loadmonindex`, converts a 16-bit species index into an 8-bit ID and loads the corresponding ID
into the script variable. (This index _can_ be zero, but that would perform a no-op load into the script variable, so
that only makes sense when the first argument is non-zero.) The first argument to this command is a locked ID position
(or zero for none), and the second argument is the 16-bit index: if the first argument is non-zero, the scripting
command will also lock the resulting ID into the specified locked ID position out of the 8 positions reserved for map
locked IDs. (Remember that a locked ID will not be garbage collected.) Map locked IDs will be released when a new map
is entered (i.e., before the `MAPCALLBACK_NEWMAP` callback is or would be executed).

The second command, `checkmaplockedmons`, will compare the 8-bit species ID in the script variable against the map's
currently locked IDs, setting it to the locked ID position that matches the ID contained in it, or zero if none does.
If the script variable doesn't contain a valid species ID to begin with, it will be set to zero without checking.
(This prevents accidentally matching a zero against a free locked ID position.) If the script variable matches several
locked IDs (because the same ID was locked into multiple positions), it will be set to the smallest position that
matches. This scripting command takes no arguments.

The `loadmonindex` command allows loading a species index into the scripting variable, while also locking it if
necessary to prevent garbage collection of the corresponding converted ID; it also allows pre-loading indexes into the
conversion table for faster lookup. Finally, for complex scripts that will later need to match the scripting variable
against specific species indexes (which would typically just use `ifequal` in the traditional 8-bit model), the
`checkmaplockedmons` command allows comparing the ID in the scripting variable against all of the species used by the
map, which will therefore permit the use of `ifequal` or `ifnotequal` (with a locked ID position as their argument).

Several map scripts were adapted to use `loadmonindex`, and there's one case that makes use of `checkmaplockedmons` to
replace its species comparisons.

Finally, multiple events using custom code were also adapted to use 16-bit indexes properly, converting to and from
8-bit IDs where necessary.

## Evolutions and learnsets

Evolutions were adapted to use 16-bit indexes for the target species. This immediately required rewriting any code
that relied on the absence of zero bytes in the evolution data, since 16-bit indexes can (and often will) have one of
their bytes set to zero; a `SkipEvolutions` function was introduced to correctly advance a pointer to the beginning of
the learnset data.

Determining the base species for any given species, a computation often carried out for breeding purposes, involved
sequentially scanning all evolution structures to recursively find the prior stage for the current species (a
recursion that was limited to two iterations, since every Pokémon evolves twice at most). This would be significantly
more complex to do after the index extensions, and far more inefficient if the species list grew; therefore, a simple
base species lookup table was introduced for this purpose.

Several miscellaneous bits of code, such as the code that checks whether a Pokémon can evolve using a certain item,
were also similarly adapted to handle the new format for the evolution data. Egg moves required a simple fix to ensure
that the 16-bit index is used to load the correct set.

## Trainer data

Trainer parties were adjusted to contain 16-bit species indexes. Since such indexes can contain $FF bytes (for
example, $00FF is a valid index, and one likely to occur in projects using 16-bit indexes), it is no longer possible
to rely on $FF bytes to delimit trainer parties; therefore, a length byte was inserted before each party.

The length bytes are computed automatically using two macros, called `next_list_item` and `end_list_items`. These
macros will insert autogenerated local labels, which are subtracted from each other to compute the distance between
them at link time; the `next_list_item` macro will insert a byte indicating the distance to the next item (including
the length byte itself), while the `end_list_items` macro will generate a final local label (necessary for the last
list item to compute its length) without inserting any length bytes.

Functions that skip trainer parties were adapted to use these length bytes instead of scanning for $FF bytes, which in
turn makes them faster. Finally, since the trainer parties would no longer fit in a single bank after increasing their
size due to the larger species indexes and the length bytes, they were split into two banks; this could be done easily
since the party-loading code already expected a far pointer for each trainer class.

## Battle Tower

The Battle Tower parties were adjusted to contain 16-bit species indexes. This makes the parties' data one byte longer
than the actual Pokémon data structure, which required the corresponding code fix: the species index is loaded first,
converted to an 8-bit ID and stored; afterwards, the rest of the data structure is loaded.

The code to generate a Battle Tower party required several modifications. That function checks, for each Pokémon that
it generates, that its species doesn't match any other species in the party being generated or in the two parties
previously fought. The first and obvious change was converting the species indexes that the game stores for the two
previous parties to 16-bit; since those indexes are stored in SRAM specifically for this purpose and not used anywhere
else in the game, they were kept as 16-bit indexes (without converting to 8-bit IDs) in order to both simplify
comparisons and avoid taking up entries in the conversion table.

In order to ensure that the selected species aren't invalidated by a garbage collection pass before the battle starts,
three locked IDs are allocated to the Battle Tower, one for each party member. These IDs are locked in as the party is
generated, and they are released when the battle is over.

Finally, the code that validates the generated party and overwrites any invalid species with Smeargle was adapted to
use 16-bit indexes correctly.

## Pokédex

The Pokédex required the largest number of changes for a single feature, since it deals with long lists of species,
not just single indexes. The Pokédex still works in fundamentally the same way, but it has been upgraded to support
16-bit indexes all throughout.

The first change was to seen/caught flags. The bitfields themselves didn't need any changes, since they will just grow
to accomodate for new species. However, the code that accesses those bitfields assumed that the index would be 8-bit
and zero-based. The functions now correctly handle one-based indexes and IDs (thus removing the need for the decrement
instructions scattered all throughout the codebase); also, those functions were split into separate functions that
handle 8-bit IDs and 16-bit indexes (the latter group being suffixed with `Index`). A new function, `CountSetBits16`,
was introduced to handle population counts for bitfields that may be larger than 255 bits in size, which is now used
to display the seen and caught counts. Finally, since map scripts expect to handle 8-bit quantities in the script
variable, the `VAR_DEXSEEN` and `VAR_DEXCAUGHT` variables were adjusted to max out at 255 when read; a new variable
called `VAR_DEXUNCAUGHT` was introduced to determine the number of species _not_ caught (also maxing out at 255) in
order to handle situations where a script needs to check for Pokédex completion or near-completion (such as when
awarding the diploma). The Mystery Gift code also uses this maxing out behavior.

The Pokédex itself needed several adjustments to support 16-bit indexes. Many memory locations were only intended to
hold an 8-bit value and had to be expanded. In particular, the Pokédex holds a live copy of the list in WRAM, which it
uses to apply filters when using the search function; this list had to be moved to a higher WRAM bank, since it
wouldn't have fit after becoming twice as large. The empty space left behind by this list was used to expand the
remaining variables as needed. The list was placed in the upper unused portion of WRAM bank 5, which has enough
capacity for 1,407 entries, not including the terminator.

Most changes to the code itself are rather intranscendental codes to the various display functions. The scrolling code
needed almost a complete rewrite to handle 16-bit offsets. The code that displays species indexes was also updated to
handle 16-bit indexes, although, since the layout wasn't changed, there is still a limit of 999 because only three
digits are printed. The function that displays the species' names in the main Pokédex screen was updated to use the
16-bit index for each entry when retrieving the corresponding name (which it does directly, for performance reasons).
The functions that determine whether a Pokémon was seen and/or caught and adjust the display accordingly were also
adapted to use the new 16-bit bitflag-checking functions. Finally, the function that displays the scroll bar was
rewritten to position it correctly by using the 16-bit list length and scroll offset to calculate how far the list has
been scrolled down.

The functions that load the Pokédex order listings and do searches also needed some very significant changes. The
listings themselves were updated to use 16-bit indexes, and the functions that load them required an update to load
the listings to a higher WRAM bank and to correctly determine which entries should be loaded and where the list ends.
The search function required a similar update to handle the filtering of the list itself; the code that actually
performs the check when searching was also updated to use the 16-bit index, using it directly as an offset into the
base data (instead of going through a conversion and `GetBaseData`) for performance reasons.

A locked ID was allocated to the Pokédex, which is used to lock in the index of the selected species when this index
is first checked and converted to an 8-bit ID; this is done to ensure that the index is not garbage collected and
doesn't change while it is still in use by some Pokédex feature. This locked ID is adjusted as necessary and released
when the Pokédex is closed. This locked ID is also used to lock in Unown's index when using the corresponding mode.

The code that displays entries themselves only needed minimal changes. The only significant change was to the code
that displays the Pokédex number, which will now convert the 8-bit ID to a 16-bit index and display it correctly; the
remainder of the code uses 8-bit IDs transparently. The function that actually loads the pointer to the entry to be
displayed required a similar update to convert the 8-bit ID to a 16-bit index in order to select the correct entry.

Several remaining Pokédex-related functions required minor adjustments to use 16-bit indexes and counts. These were:

* The Pokédex rating function, updated to check the full 16-bit count and compare it against a 16-bit limit in order
  to display the correct entry;
* The function that loads a random Pokédex entry for Professor Oak's Pokédex Show radio broadcast, which will now
  generate a random 12-bit index instead of an 8-bit one when attempting to select a random entry (and will properly
  use this index to check whether the Pokémon was caught); and
* The footprint-loading function, updated to use the full 16-bit index when selecting the footprint to load.

## Subsystems using full indexes

Some subsystems within the game have been updated to use 16-bit indexes directly, instead of converting to and from
8-bit IDs. There are several reasons to do this, but the consequence is that any interaction with these subsystems
must convert from 8-bit IDs to 16-bit indexes at the point of interaction.

These subsystems are:

* Pokémon PC storage for boxes other than the current one. The PC storage system can store well over 256 Pokémon by
  itself, which would render any attempt to use 8-bit IDs for it completely impossible. Since there is a clear
  separation between the current box and the rest of them, the current box uses 8-bit IDs as usual. However, the
  remaining boxes use full 16-bit indexes. The indexes are written to an array stored at the end of each corresponding
  SRAM bank; the species ID field in each Pokémon's data is ignored (and may be later repurposed if needed). (The
  species list in the header is kept intact, since the game uses it to track which slots are free, and to detect eggs.
  However, for the slots that contain [table IDs][table-operation], those IDs only signal that the slot is taken by a
  Pokémon (i.e., not an egg); the actual ID stored there is immaterial and not considered in use.) When the current
  box is switched, the 16-bit indexes for that box are computed and stored, and the conversion table's garbage
  collector is run (taking advantage of the fact that multiple IDs will have probably been released); afterwards, the
  16-bit indexes for the new box are converted to 8-bit IDs when the box is loaded.
* Hall of Fame data. There are enough Hall of Fame parties to fill the conversion table nearly twice over, and the
  data there is only used when displaying previous Hall of Fame parties when the corresponding feature is accessed
  through the PC. Therefore, it's simpler to store Pokémon species in the Hall of Fame teams directly as 16-bit
  indexes; these indexes will be converted to 8-bit IDs as each party member is displayed, but this is not a problem.
* Previously fought parties in the Battle Tower. These were explained in [the corresponding section][sec06].

## Saving and reloading

Conversion tables are zero-initialized on game start. However, since much of the game's state uses 8-bit IDs,
preserving the conversion tables is an important step when saving the game. The species conversion table is thus saved
alongside the remainder of the game data when the game is saved and reloaded when a savefile is loaded, adding a step
to the already existing functions that perform the basic save and load operations.

Since the species conversion table is stored in a higher WRAMX bank, it cannot be copied together with the rest of the
game data. The table is stored and loaded separately next to this data. However, since checksums are computed over the
data that is effectively written to SRAM, the table is included in the checksum, as it contains critical data.

## Linking and Time Capsule

Linking requires special consideration, as link features replicate the other side's party in the `wOTPartyMon` buffers
for further trading or battling. This problem is made more significant by the fact that the game can also link to
generation 1 games, which don't have any form of 16-bit indexing or indirection table handling. (Linking with other
generation 2 games that haven't been upgraded is not handled by this branch.)

The Time Capsule code must validate that the party only contains species and moves available in generation 1 before
the trade is started. (Battling with older generations is not allowed.) These checks were updated to use 16-bit
species indexes, including the unusual step of comparing whether the species index is less than 152 (lowest index of a
Pokémon species that didn't exist in generation 1), which will now check the entire 16-bit value. Magnemite and
Magneton also require some special handling, since their type changed from Electric to Electric/Steel between
generations; this check now uses the 16-bit index as well.

When linking with a generation 1 game, the party data to be sent must be converted to generation 1 format, and the
party data that is received from the other side must be converted back from generation 1 format as well. In terms of
species indexes, the conversion to generation 1 format is rather straightforward: the 16-bit species index (which is
known at this point to be less than 152) is used as an index into the list of generation 1 indexes; the only change is
the ID to index conversion to retrieve the actual species index to be later translated into a generation 1 index. The
reverse conversion is largely unchanged: the only additional step is the extension of the species index into 16 bits
and its conversion to an 8-bit ID through `GetPokemonIDFromIndex`.

Linking to other generation 2 games (using 16-bit indexes) requires a completely different approach. The data
structures need no conversion here, since the data uses the same format on both sides. However, the 8-bit IDs
contained in those structures refer to different conversion tables (since each game has its own table, which is
dynamically updated as the game progresses); local IDs aren't meaningful on the remote game. A naive approach would be
to synchronize the conversion tables; this is nearly impossible, since it would require reallocating IDs in use (which
in turn requires tracking usage of those IDs, nullifying any advantage of the conversion table approach).

Instead, an index list is built, containing all 16-bit species indexes in the party; this index list is exchanged with
the remote side's list when party data is exchanged. When the remote party and index list are received, the party data
is adjusted by allocating 8-bit IDs for the received indexes and assigning them to the correct party locations.

Finally, the safety checks that prevent players from using a cheat device to force a traded Pokémon to become a Mew or
a Celebi (or perhaps to prevent a rogue trading machine from generating one) were updated to use 16-bit indexes.

## Indirection tables

In order to facilitate expanding the number of available species, several [indirection tables][indirection] were
defined, which allow splitting some long arrays of data into multiple banks. Features that already used far pointers
did not require indirection tables and were thus left unmodified.

Indirection tables were defined for:

* Base data for each species (this array is the largest offender, containing 32 bytes for each species, which can
  easily grow larger than a bank as new species are added)
* Egg move pointers
* Evolutions and attacks pointers

While it would be possible to simply use far pointers for the last two, given the locality of the existing pointers,
the indirection table approach avoids increasing the size of each array entry by 50%.

The code that accesses these structures directly (which is typically quite isolated) was adapted to use indirection
tables instead; this involved in part a rewrite of previously-updated code. The `LoadIndirectPointer` function (as
well as the related `LoadDoubleIndirectPointer` function) will detect invalid indexes as arguments; since the code
that was rewritten didn't have any error handlers, none were added, but they could be easily introduced after the
function calls.

[home-bank-functions]: 16-bit-conversion-macro-functions#home-call-macros
[indirection]: Indirection-tables
[sec01]: #conversion-table-definition
[sec02]: #affected-subsystems
[sec03]: #map-scripting-changes
[sec04]: #evolutions-and-learnsets
[sec05]: #trainer-data
[sec06]: #battle-tower
[sec07]: #pokédex
[sec08]: #subsystems-using-full-indexes
[sec09]: #saving-and-reloading
[sec10]: #linking-and-time-capsule
[sec11]: #indirection-tables
[table-operation]: 16-bit-conversion-table#operation
[table-params]: 16-bit-conversion-table#definition

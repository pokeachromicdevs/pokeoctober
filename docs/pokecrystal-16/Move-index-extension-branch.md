# Move index extension branch (`expand-move-ID`)

This feature branch extends on top of the [Pokémon index extension][mon-index-branch] branch, implementing 16-bit
extension for moves. Multiple subsystems were updated to account for the index extension, making them use the new
conversion table as appropriate.

* [Conversion table definition][sec01]
* [Affected subsystems][sec02]
* [Move data and attributes][sec03]
* [Move animations][sec04]
* [Move effects][sec05]
* [Battle Tower][sec06]
* [Bill's PC][sec07]
* [Trainer AI][sec08]
* [Saving and reloading][sec09]
* [Linking and Time Capsule][sec10]
* [Indirection tables][sec11]
* [Garbage collection][sec12]

## Conversion table definition

The move index conversion table was declared right after the [Pokémon table][mon-table], in the region allocated for
that purpose; the table is located on WRAM bank 2, at address $D300. The table is declared as `wMoveIndexTable`, with
a corresponding set of [parameter constants][table-params] prefixed by `MOVE_TABLE`; the values of those parameters
are the following:

|Constant                               |Value|
|:--------------------------------------|----:|
|`MOVE_TABLE_ENTRIES`                   |  230|
|`MOVE_TABLE_LOCKED_ENTRIES`            |   18|
|`MOVE_TABLE_CACHE_SIZE`                |   16|
|`MOVE_TABLE_SAVED_RECENT_INDEXES`      |   16|
|`MOVE_TABLE_MINIMUM_RESERVED_INDEX`    |  $FF|

The parameters defined above make the table fit exactly in $200 bytes with no padding; there are no special reserved
indexes besides -1.

The [home bank functions][home-bank-functions] needed to access this table are declared as `GetMoveIndexFromID`,
`GetMoveIDFromIndex`, `LockMoveID` and `GetLockedMoveID`; the garbage collector function for this table is also
exposed as `MoveTableGarbageCollection`.

The garbage collector will look for valid IDs in the following locations to consider them as "in use":

* Party and currently-selected PC box
* Opponent trainer's party
* Pokémon left in the Day-Care
* Bug-Catching Contest current Pokémon
* Locations used to track moves during a battle (`wCurPlayerMove`, `wCurEnemyMove`, `wLastPlayerMove`,
  `wLastEnemyMove`, `wDisabledMove`, `wEnemyDisabledMove`, `wUnusedPlayerLockedMove`, `wLastPlayerCounterMove`,
  `wLastEnemyCounterMove`, `wPlayerTrappingMove`, `wEnemyTrappingMove`, `wPlayerMoveStructAnimation`,
  `wEnemyMoveStructAnimation`)
* AI record of moves used by the player during battle
* Various temporary structs containing moves (`wBufferMonMoves`, `wTempMonMoves`, `wBattleMonMoves`, `wEnemyMonMoves`,
  `wWildMonMoves`)
* The temporary buffer in `wPutativeTMHMMove`

## Affected subsystems

The following subsystems in the game were updated to use 16-bit indexes correctly:

* [Battle Tower party data][sec06]
* Buena's Password: adapted password lists containing moves to use 16-bit indexes.
* Dragon Shrine Dratini giveaway: potential move lists now use 16-bit indexes.
* Field moves:
    * Move existence checks (i.e., checking whether any Pokémon in the player's party knows some specific move) when
      attempting to use a field move in the overworld now use 16-bit indexes.
    * Pokémon submenus now use 16-bit indexes to check for field moves and load the corresponding menu entries.
* Learnsets and egg moves: added indirection tables in order to split them across banks, converted the move lists to
  use 16-bit move indexes and adjusted the code referencing them.
* [Link features and Time Capsule][sec10]
* Miscellaneous references to specific moves in code, fixed to use 16-bit indexes:
    * `CheckPlayerHasUsableMoves`: use Struggle if no moves are available.
    * `GetMovePriority`: check for Vital Throw.
    * `HandleFutureSight`: check if Future Sight was used.
    * `HandleMysteryBerry`: check if it is restoring Sketch's PP.
    * `_LinkBattleSendReceiveAction`: check whether Struggle was used.
    * `ParseEnemyAction`: use Struggle if no moves are available.
    * `ParsePlayerAction`: check whether Struggle was used.
    * `RestorePPEffect`: check if it is restoring Sketch's PP.
    * `ValidateBTParty`: detect if a move is invalid (doesn't exist) and replace it with Pound.
* [Move animations][sec04]
* [Move attributes][sec03]
* Move descriptions: created an indirection table for them, moved the `FarPlaceString` function to the home bank (so
  it will actually be able to place far strings), and fixed the description printing function so it will convert the
  8-bit ID to a 16-bit index in order to print the correct description.
* Move names: adapted to use 16-bit indexes, including the creation of a `GetNthString16` function to handle 16-bit
  indexes into string tables.
* Odd Egg generation: moves are now stored separately as 16-bit indexes and loaded into the egg's data when the egg is
  generated.
* TMs, HMs and move tutors:
    * Move lists (and code referring to them) now use 16-bit move indexes.
    * Move tutors use 16-bit indexes when selecting and loading the move they will teach.
* [Trainer AI][sec08]
* Trainer parties: updated move lists (for parties that define moves) and the code referencing them to use 16-bit move
  indexes; this includes the `RandomPhoneMon` function, which may have to skip over some Pokémon (including their
  moves) in a party.

## Move data and attributes

WIP

## Move animations

WIP

## Move effects

WIP

## Battle Tower

WIP

## Bill's PC

WIP

## Trainer AI

WIP

## Saving and reloading

WIP

## Linking and Time Capsule

WIP

## Indirection tables

WIP

## Garbage collection

WIP

[home-bank-functions]: 16-bit-conversion-macro-functions#home-call-macros
[mon-index-branch]: Pokemon-index-extension-branch
[mon-table]: Pokemon-index-extension-branch#conversion-table-definition
[sec01]: #conversion-table-definition
[sec02]: #affected-subsystems
[sec03]: #move-data-and-attributes
[sec04]: #move-animations
[sec05]: #move-effects
[sec06]: #battle-tower
[sec07]: #bills-pc
[sec08]: #trainer-ai
[sec09]: #saving-and-reloading
[sec10]: #linking-and-time-capsule
[sec11]: #indirection-tables
[sec12]: #garbage-collection
[table-params]: 16-bit-conversion-table#definition

; constants for 16-bit conversion tables:
; _ENTRIES: number of entries in the table; 8-bit indexes $01, $02, ..., _ENTRIES will point to table entries
; _LOCKED_ENTRIES: number of entries in a reserved ID array; valid IDs stored in this table will be protected from
;                  eviction when the table is garbage collected to make room for new entries (useful to preserve
;                  IDs being used in the current screen, map script, etc.)
; _CACHE_SIZE: number of entries in a fast-retrieval cache table that attempts to make retrieving recently-used
;              indexes faster; must be a power of two (or zero to disable the cache)
; _SAVED_RECENT_INDEXES: circular buffer of recently-allocated IDs, protecting them from eviction and thus simplifying
;                        code that allocates several IDs at once
; _MINIMUM_RESERVED_INDEX: minimum value that will be treated as a special value and not handled through the table;
;                          8-bit IDs that are greater or equal to this value convert to $FF00 + index, and the reverse
;                          conversion is also valid without using the table. This guarantees that high values (such
;                          as $FF), often handled as negative indexes, retain their special meanings without requiring
;                          an allocation

MON_TABLE_ENTRIES                EQU 100
MON_TABLE_LOCKED_ENTRIES         EQU  30
MON_TABLE_CACHE_SIZE             EQU  16
MON_TABLE_SAVED_RECENT_INDEXES   EQU   8
MON_TABLE_MINIMUM_RESERVED_INDEX EQU $FD ; ensures that the value for the egg will remain reserved

MOVE_TABLE_ENTRIES                EQU 230
MOVE_TABLE_LOCKED_ENTRIES         EQU  18
MOVE_TABLE_CACHE_SIZE             EQU  16
MOVE_TABLE_SAVED_RECENT_INDEXES   EQU  16
MOVE_TABLE_MINIMUM_RESERVED_INDEX EQU $FF

ITEM_TABLE_ENTRIES                EQU 100
ITEM_TABLE_LOCKED_ENTRIES         EQU  30
ITEM_TABLE_CACHE_SIZE             EQU  16
ITEM_TABLE_SAVED_RECENT_INDEXES   EQU   8
ITEM_TABLE_MINIMUM_RESERVED_INDEX EQU $FF

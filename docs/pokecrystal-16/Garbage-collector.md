# Garbage collector

Since there are more valid 16-bit indexes than there are available 8-bit IDs, the latter will always be in short
supply. Without any way of releasing IDs that are no longer in use, the conversion table would hopelessly fill up and
become useless after some time.

The garbage collector, therefore, is the component that ensures that IDs are recycled when no longer in use. As shown
in the [macro functions page][macros], the garbage collector is part of the function that writes indexes to the
conversion table and allocates IDs; it is executed automatically by the ID allocation routine when there are no more
IDs available.

* [Definition and requirements](#definition-and-requirements)
* [Overview](#overview)
* [Sample code](#sample-code)
* [Bitmap and bit-setting function][set-bit]
* [Initialization][step2]
* [Marking IDs in use][step3]
* [Releasing IDs][step5]

## Definition and requirements

The garbage collector must be defined right after the function that writes indexes to the conversion table. While it
is possible to simply write its code underneath that function's macro, declaring a symbol for the garbage collector
itself (that is, giving it a function name) is strongly recommended, like so:

```
_ConvertSomeIndexToID:
	___conversion_table_store wSomethingTable, SOMETHING_TABLE
	; fallthrough
SomethingTableGarbageCollection:
	; garbage collector goes here
```

The garbage collector function must preserve `de`; all other registers can be freely clobbered by the function. Also,
`rSVBK` must be set to the bank of the conversion table both on input and on output — in other words, the function
will be called with the current WRAMX bank set to the conversion table's bank, and it must preserve that value.

It is permissible to far call a garbage collector; this may be done to take advantage of an idle period (such as
before saving the game) in order to execute this relatively expensive operation. The calling convention for such
manual calls is the same as the one described in the previous paragraph: `rSVBK` must be set to the conversion table's
WRAMX bank, and the function will preserve that and `de` and clobber everything else.

**Garbage collection is expected to eventually succeed.** When the ID allocation routine calls the garbage collector,
it expects to find at least one free ID after the call completes. If there are no free IDs, it will simply call the
garbage collector again, as the free ID search loop won't find any free IDs. This loop will become endless unless and
until the garbage collector frees up at least one ID. (This implies that the conversion table must be large enough to
contain all IDs in use and a few extra.)

## Overview

Given the requirements mentioned above and the expected behavior of the garbage collector, the high-level approach to
this function is usually like so:

1. Push `de` and `rSVBK`.
2. [Initialize the bitmap and mark locked and recent IDs as in use.][step2]
3. [Find IDs in use at several known locations and mark them in use in the bitmap.][step3]
4. Restore `rSVBK`.
5. [Free up all table IDs that weren't marked in use by the previous steps.][step5]
6. Restore `de` and return.

Steps 1, 4 and 6 come directly from the requirement to preserve those two values; `rSVBK` is restored early because
the macro that frees up table IDs requires `rSVBK` to be set to the table's WRAM bank. The remaining steps will be
described in subsequent sections, along with the helper macros that can be used to define them.

Note that the garbage collector will require a subfunction to set bits in the bitmap used to track IDs in use. (Almost
all of the code for this subfunction is identical across all instances of this subfunction; the requirement for a
different one for each table comes from the initial check for validity of an ID. Since this subfunction is called very
often while the garbage collector runs and it is quite slow, the performance gain brought by having a separate copy
for each table is worthwhile.) This subfunction will also be described in [a later section][set-bit].

## Sample code

Based on the steps explained in the previous section, the garbage collector function will generally look like this:

```
SomethingTableGarbageCollection:
	; step 1: preserve de and rSVBK
	push de
	ldh a, [rSVBK]
	push af
	; step 2: initialize the bitmap
	___conversion_bitmap_initialize wSomethingTable, SOMETHING_TABLE, .set_bit
	; step 3: find IDs in use
	; (elided - set the bits manually in the bitmap and/or use macros to do so)
	; step 4: restore rSVBK
	pop af
	ldh [rSVBK], a
	; step 5: free up unused table IDs
	___conversion_table_free_unused wSomethingTable, SOMETHING_TABLE
	; step 6: restore de and return
	pop de
	ret

.set_bit
	; bit setting function: takes an ID in a, and sets the corresponding bitmap bit if the ID is valid
	___conversion_bitmap_set SOMETHING_TABLE
```

The macros used in this example, as well as the macros available for step 3, will be explained in subsequent sections.

## Bitmap and bit-setting function

The garbage collector relies on a $20-byte structure called the bitmap, which is a simple array of bits used to mark
which IDs are in use. This structure is defined in WRAM0, called `wConversionTableBitmap`, and it can be anywhere in
the bank as long as it doesn't straddle a $100 alignment boundary; it is defined as aligned to $20 for simplicity. The
structure contains a single bit for each ID, and it is shared by all garbage collectors from all conversion tables
(since only one can run at a time); since the maximum number of IDs in a conversion table is $FE, $20 bytes are enough
to hold a single bit for each one of them.

This structure is initialized to all zeros during the initialization step in the garbage collector; subsequent steps
will set bits to 1 as they find IDs in use, thus letting the final step of the garbage collector know which IDs are
available to be freed. This setting of bits is carried out by the bit-setting function at the end of the garbage
collector code, which is defined with a macro, which only takes the constant prefix as its argument and defines the
entirety of the function, like so:

```
.set_bit
	___conversion_bitmap_set SOMETHING_TABLE
```

Almost all of the code in this function is identical for all conversion tables; in fact, only an initial range check
differs. However, since the conversion table code is optimized for speed rather than size, the entire contents of the
function are copied each time. If this is undesirable, it is possible to simply replicate the first part of the macro,
and jump to a common bit-setting function, like so:

```
.set_bit
	dec a
	cp SOMETHING_TABLE_ENTRIES
	; define the following function somewhere, containing all of the macro after "ret nc"
	jp c, ConversionTableBitSettingFunction
	ret
```

Either way, the calling convention for this function is the same: it takes an ID in `a`, clobbers all registers but
`de` and returns nothing.

## Initialization

Within the garbage collector proper, the first action that is carried out after the initial register preservation is
initialization. This is executed via a macro, `___conversion_bitmap_initialize`, that takes three arguments: the
conversion table's WRAM label prefix, the corresponding constant prefix, and the bit-setting function defined in the
previous section. The macro therefore looks like this:

```
	___conversion_bitmap_initialize	wSomethingTable, SOMETHING_TABLE, .set_bit
```

Initialization has a double purpose. First of all, it sets the bitmap to zero, ensuring that all IDs are initially
marked as not in use. Afterwards, it iterates over the two ID lists in the conversion table (namely, the locked ID
and recently allocated ID lists), marking all of the table IDs contained in those lists as in use (by calling the
bit-setting function passed to the macro), ensuring that none of those IDs are erroneously freed by the garbage
collector.

## Marking IDs in use

Once the bitmap is initialized, the first pass of the garbage collector consists of finding IDs in use throughout the
game's memory and marking them in use in the bitmap. This will of course depend heavily on the purpose of the IDs in
the first place: species IDs and item IDs will be found in different locations, for instance. Therefore, this is the
one part of the conversion table code that is not standardized for all tables.

In general, since marking the same ID more than once or marking non-table IDs (such as $00) won't have any problematic
effects, it is recommended to simply mark as in use all IDs found in locations that can potentially hold a valid table
ID. This might mark in use an ID that really isn't, but as long as there is enough space in the table to free up at
least one ID, this is not a problem.

Marking an ID in use is as simple as loading it into `a` and calling the bit-setting function. For IDs that exist in
isolated locations in memory, this is generally the procedure:

```
	ld a, [wSomeID]
	call .set_bit
```

However, IDs are generally found in logical groups that may be large in size, which makes writing code like this
considerably tedious. It might be tempting to write a simple list of pointers and have the function read through those
pointers and check them one by one, like so:

```
	ld de, .pointers
.loop
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	ld h, a
	or l
	jr z, .done
	inc de
	ld a, [hl]
	call .set_bit
	jr .loop
.done

; ...

.pointers
	dw wFirstID
	dw wSecondID
	dw wThirdID
	dw 0
```

(Note that an alternate implementation beginning with `ld hl, .pointers` would require preserving `hl` across calls to
`.set_bit`.)

However, it can be clearly seen that this code will be far slower than its simple, repetitive counterpart. In order to
favour speed optimizations, a macro is defined to make this repetition easier. This macro, called
`___conversion_bitmap_check_values`, takes as its arguments the bit-setting function followed by any number of
addresses, emitting the repetitive (but fast) code seen above for each one of the addresses given, like so:

```
	___conversion_bitmap_check_values .set_bit, wFirstID, wSecondID, wThirdID
```

A common special case occurs when there is a series of memory locations containing IDs that are related and evenly
spaced in memory; for example, this is the case of an array of structures. For this particular case, another macro is
defined, `___conversion_bitmap_check_structs`, which takes as arguments the address of the first memory location, the
distance between each memory location (e.g., the length of the structure), the number of memory locations to check
(e.g., the length of the array of structures) and the bit-setting function. For instance, to mark in use the IDs
contained in a hypothetical 10-element array called `wData`, where each element is of size `DATA_LENGTH`, the macro
invocation could look like this:

```
	___conversion_bitmap_check_structs wData1ID, DATA_LENGTH, 10, .set_bit
```

(Note that, given the intention to favour speed over size, this macro will still expand to the repetitive check above
unless the number of IDs to check exceeds a certain threshold; once it does, the macro will expand into a loop,
although a partially-unrolled one like every other conversion table macro that contains a loop.)

## Releasing IDs

Finally, after all IDs in use have been marked in the bitmap, the remaining ones can be released. Internally, this
means setting their indexes to zero; an index of zero in the table indicates an available slot. This operation will
also recount the number of occupied slots (ensuring that the count is accurate) and update it in the corresponding
location in the conversion table structure.

This step is carried out by the final macro in the function, `___conversion_table_free_unused`, which only takes the
WRAM label prefix and the constant prefix as arguments, like so:

```
	___conversion_table_free_unused wSomethingTable, SOMETHING_TABLE
```

This macro requires that the WRAM bank that was selected when the garbage collector was called is restored, which is
why that step is executed earlier. After this macro is done, the conversion table will be ready for a new allocation;
all that is left is restoring `de` and returning to the caller.

[macros]: 16-bit-conversion-macro-functions
[set-bit]: #bitmap-and-bit-setting-function
[step2]: #initialization
[step3]: #marking-ids-in-use
[step5]: #releasing-ids

# Indirection tables

Indirection tables are far pointer tables introduced to break large arrays of data into smaller parts by introducing
an extra layer of indirection. This prevents those arrays from becoming too large, since the addition of new entries
into the arrays may cause them to overflow the bank they are located in.

These tables introduce an indirection level when a single element out of an array of data is accessed. The
corresponding helper function performs retrieval out of these broken-down arrays, taking a far pointer to the
indirection table and an array index as arguments and returning a far pointer to the element; this replaces the usual
multiply-and-accumulate approach towards array indexing. Indirection tables contain far pointers to blocks of entries;
the accessor function takes care of figuring out which block an entry belongs to and computing the correct offset
within said block.

A particular case of an array is an array of pointers to data, which occurs when the indexed data is of variable size.
Those arrays don't need to be broken down — it is always possible to separate the data across banks by simply using
far pointers instead of near ones. However, this incurs a one-byte penalty per entry. Therefore, it is also possible
to create an indirection table for an array of pointers, and using only near pointers within each block of the array;
the size overhead is significantly smaller this way (at a cost of access speed). There is a specific helper function
for this particular case.

## Declaration

An indirection table is declared using three macros: `indirect_table` to declare the table itself, `indirect_entries`
to declare the blocks that comprise the table (once per block), and `indirect_table_end` to signal the end of the
table. A complete example may look like this:

```
SomethingData:
	indirect_table $10, 1 ;elements of $10 bytes each; first element is numbered 1
	indirect_entries 100, SomethingData1 ;elements 1-100 are in a block starting at SomethingData1
	indirect_entries 200, SomethingData2 ;elements 101-200 are in SomethingData2
	indirect_entries 250, $4000, BANK("Data 3") ;elements 201-250 are in that specific bank and address
	indirect_entries 300 ;elements 251-300 are nowhere - sparse table
	indirect_entries 320, SomethingData4 ;elements 301-320 are in SomethingData4
	indirect_table_end
```

The three macros involved are:

* `indirect_table`: begins a new indirection table. (If this macro is used in the middle of a table, an error is
  raised.) The first argument is the size of each entry (which must be a compile-time constant), and the second
  argument is either 0 or 1, indicating the index for the first entry in the array. Note that for arrays of near
  pointers, the first argument must be 2.
* `indirect_entries`: declares a block of entries. The first argument must be a compile-time constant, indicating the
  index of the last entry in the block; the first entry's index is taken to be one more than the previous block's last
  entry's (or the index of the first element for the first block). The following two arguments indicate the address
  and bank of the block; if the address is a symbol that can be passed to `BANK()`, the last argument may be omitted
  and will default to that symbol's bank. For a sparse block (i.e., a block of array indexes that don't have any
  corresponding data), leave out both the address and the bank. (Note that, internally, a block can only span up to
  255 indexes; if the declared block is bigger, the macro will automatically split it and adjust the indexes and
  addresses accordingly.)
* `indirect_table_end`: signals the end of an indirection table. This lets the accessor functions know to stop looking
  for blocks if the index hasn't been found.

## Accessor functions

There are two accessor functions:

* `LoadIndirectPointer`: basic accessor function for generic indirection tables. It takes a far pointer to the table
  in `a`:`hl` and the index in `bc`, and returns a far pointer to the corresponding element in `a`:`hl`; `b` will
  contain a copy of `a`, and `c` will be clobbered. The `de` register is preserved.
* `LoadDoubleIndirectPointer`: accessor function for pointer indirection tables — that is, indirection tables that
  point to arrays of near pointers. It has the same calling convention as the previous function, but it will
  dereference the pointer found at the corresponding index, thus returning a pointer to the actual data in `hl`.

In both cases, the index given in `bc` may not correspond to a valid entry — because it's beyond the end of the table,
because it falls on a sparse block, or because it is zero and the array begins at one. If this happens, the zero flag
will be set, and the values of `a`, `b` and `hl` will be undefined; the zero flag will be cleared if the returned
pointer is valid.

//----[ memory.t ]-----------------------

.label lmem     = $0100-(2*1)       //1st Module

.label memcpy_  = 0
//  A -> Source page address
//  Y -> Dest page address

.label memset_  = 3
//  A     -> Fill byte value
//  Y     -> Page address to fill
//  A/X/Y <- Same as the came in.

.label memfree_ = 6
//  X <- Number of free pages

//---------------------------------------

.label free_    = 9
//  RegPtr -> pointer to malloc'd memory

.label malloc_  = 12
//  A      -> Memory pool (start page)
//  RegWrd -> 16-bit length to allocate
//  C      <- Set on error
//  RegPtr <- Pointer to start of memory

//---------------------------------------

.label pgfree_  = 15
//  Y -> Page address to free
//  X -> Number of pages to free
//  C <- Set on error

.label pgmark_  = 18
//  X -> First page to mark
//  Y -> Last  page to mark

.label pgalloc_ = 21
//  A -> Allocation Type
//  X -> Number of pages to allocate
//  Y <- First allocated page address
//  C <- Set on error

//---------------------------------------

.label reuconf_ = 24
//  RegPtr -> REU Bank/Page
//  A      -> Config Flags
//  C      <- Set on NO REU available
//  A      <- # Banks Available to App

.label pgfetch_ = 27
//  RegPtr -> C64 Memory Buffer to fetch
//  C      <- Set on failure to fetch
//  C      <- Clr on successful fetch

.label pgstash_ = 30
//  RegPtr -> C64 Memory Buffer to stash
//  C      <- Set on failure to stash
//  C      <- Clr on successful stash

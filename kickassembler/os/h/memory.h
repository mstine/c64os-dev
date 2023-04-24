//----[ memory.h ]-----------------------

.label lmem     = $0100-(2*1)

.label memcpy_  = 0
.label memset_  = 3
.label memfree_ = 6
.label free_    = 9
.label malloc_  = 12
.label pgfree_  = 15
.label pgmark_  = 18
.label pgalloc_ = 21
.label reuconf_ = 24
.label pgfetch_ = 27
.label pgstash_ = 30

//----[ io.t ]---------------------------

.label stack    = $0100 //$01ff

.label scrbuf   = $0400 //$07ff

//RAM mapped
.label charset  = $d000 //$d7ff
.label colbuf   = $d800 //$dbe7
.label scrmem   = $dc00 //$dfe8
.label bmapmem  = $e000 //$ff3f

//I/O mapped
.label vic      = $d000 //$d3ff
.label sid      = $d400 //$d7ff
.label colmem   = $d800 //$dbe7
.label cia1     = $dc00 //$dcff
.label cia2     = $dd00 //$ddff

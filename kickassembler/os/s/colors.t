//----[ colors.t ]-----------------------

.label cfgmask  = $0f //AND -> disable hi nybble
.label cbgmask  = $f0 //AND -> disable lo nybble

                      //Config / Mouse Codes
.label cblack   = $00 // 1       @
.label cwhite   = $01 // 2       a
.label cred     = $02 // 3       b
.label ccyan    = $03 // 4       c
.label cpurple  = $04 // 5       d
.label cgreen   = $05 // 6       e
.label cblue    = $06 // 7       f
.label cyellow  = $07 // 8       g
.label corange  = $08 // q       h
.label cbrown   = $09 // w       i
.label clred    = $0a // e       j
.label cdgrey   = $0b // r       k
.label cmgrey   = $0c // t       l
.label clgreen  = $0d // y       m
.label clblue   = $0e // u       n
.label clgrey   = $0f // i       o

//High Nybble, used for ON bits in hires

.label chblack  = $00
.label chwhite  = $10
.label chred    = $20
.label chcyan   = $30
.label chpurple = $40
.label chgreen  = $50
.label chblue   = $60
.label chyellow = $70
.label chorange = $80
.label chbrown  = $90
.label chlred   = $a0
.label chdgrey  = $b0
.label chmgrey  = $c0
.label chlgreen = $d0
.label chlblue  = $e0
.label chlgrey  = $f0

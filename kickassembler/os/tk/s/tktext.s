#import "tksizes.s"
//----[ tktext.s ]-----------------------

//----String Flags-------

.label f_wrap   = %00000001
.label f_sel    = %00000010 //Selectable
.label f_asc    = %01000000 //Asc2Pet
.label f_rev    = %10000000 //Reverse Draw

//----Text Props---------

.label tstrptr  = tkviewsz

.label tstrflgs = tkviewsz+2
.label tlinemap = tkviewsz+3
.label tmapsize = tkviewsz+4

.label tcwidth  = tkviewsz+5
.label tcheight = tkviewsz+7

.label tselstrt = tkviewsz+9
.label tselend  = tkviewsz+11

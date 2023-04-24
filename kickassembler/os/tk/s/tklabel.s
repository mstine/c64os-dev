#import "tksizes.s"
//----[ tklabel.s ]----------------------

//----String Flags-------

.label a_lft    = %00000001 //Align Left
.label a_rgt    = %00000010 //Align Right

.label f_rev    = %10000000 //Reverse Draw

//Text Align Bits

//Full    = 00 //Not used by tklabel
//Left    = 01
//Right   = 10
//Center  = 11

//----Text Props---------

//strptr   = tkviewsz
.label strflgs  = tkviewsz+2
.label strlgth  = tkviewsz+3

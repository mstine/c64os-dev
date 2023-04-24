#import "tksizes.s"
//----[ tkctrl.s ]-----------------------

//----Control Flags------

.label cf_rvrs  = 1    //Draw in Reverse Mode
.label cf_cont  = 2    //Trigger continuously

.label cf_hilit = 16   //Draw Highlighted
.label cf_deflt = 32   //Default Control Status

.label cf_state = 64   //Active/Inactive State
.label cf_disab = 128  //Enable/Disable State

//----Value Types--------

.label vt_byt   = 1    //1-byte Byte
.label vt_wrd   = 2    //2-byte Word
.label vt_flt   = 4    //5-byte Float
.label vt_str   = 8    //2-byte String Pointer

//----Action Props-------

.label sender   = tkviewsz
.label act_meth = tkviewsz+2
.label act_tgt  = tkviewsz+3

//----Interaction Props--

.label cflags   = tkviewsz+5
.label rtvalu   = tkviewsz+6 //Repeat timer valu

//----Value Props--------

.label valtype  = tkviewsz+9
.label value    = tkviewsz+10

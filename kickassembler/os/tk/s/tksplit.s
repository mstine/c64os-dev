#import "tksizes.s"
//----[ tksplit.s ]----------------------

//Split Orientations
.label so_hor   = 0
.label so_ver   = 1

.label clps_hor = %10000000 //asl -> Carry
.label clps_ver = %00000001 //lsr -> Carry

//----Sizing Props----

.label orient   = tkviewsz    //1
.label spos     = tkviewsz+1  //2
.label schild   = tkviewsz+3  //2
.label collapse = tkviewsz+5  //1

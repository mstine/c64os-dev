#import "tksizes.s"
//----[ tksbar.s ]-----------------------

//----Orient Values------

//These are not defined, just noted here.
//Remember that "1" is drawn vertically.

//Horizontal = 0
//Vertical   = 1

//----Configurable Props----

.label orient   = tkctrlsz   //Orientation

//----Computed Props--------

.label scrlns   = tkctrlsz+1 //Scrollable Lines
.label nubsz    = tkctrlsz+3 //Nub Size
.label nublns   = tkctrlsz+5 //Nub Movable Lines
.label nuboff   = tkctrlsz+7 //Nub Offset
.label pagesz   = tkctrlsz+9 //Page Size

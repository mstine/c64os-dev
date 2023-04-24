#import "tksizes.s"

//----[ tkbutton.s ]---------------------

//----Button Types------

.label bt_rad   = 0 //Radio
.label bt_chk   = 1 //Checkbox
.label bt_cyc   = 2 //Cycle Button
.label bt_mnu   = 3 //Menu  Button
.label bt_psh   = 4 //Push  Button

//----Button Props-------

.label btype    = tkctrlsz   //Button type

.label title    = tkctrlsz+1 //String ptr
.label lpad     = tkctrlsz+3 //Left padding

.label bnext    = tkctrlsz+4 //Radio Link Ptr

//When one radio button is activated
//it needs to deactivate all the others
//in its set. Radio Buttons must be
//linked together in a singly-linked loop
//via bnext. 1 -> 2 -> 3 -> 4 -> 1 etc.

.label minval   = tkctrlsz+6  //Minimum Value
.label maxval   = tkctrlsz+7 //Maximum Value

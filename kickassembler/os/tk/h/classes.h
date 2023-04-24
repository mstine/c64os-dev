#importonce 
#import "../../h/modules.h"
//----[ classes.h ]----------------------

//Class Start Offsets      (class size)

.label tsobj    = stkt-$21

.label tsview   = tsobj-$0699

.label tssplit  = tsview-$03d3
.label tstabs   = tssplit-$034f
.label tsscroll = tstabs-$0318

.label tslabel  = tsscroll-$0198

.label tsctrl   = tslabel-$01e7

.label tsbutton = tsctrl-$02d7
.label tssbar   = tsbutton-$0784

//--[ Sizes ]----------------------------

.label tcobjsz  = 10
.label tcviewsz = tcobjsz+51
.label tcsplitsz = tcviewsz+3
.label tctabsz  = tcviewsz+9
.label tcscrollsz = tcviewsz+12
.label tclabelsz = tcviewsz+3
.label tcctrlsz = tcviewsz+18

.label tcbuttonsz = tcctrlsz+6
.label tcsbarsz = tcctrlsz+6

//---------------------------------------

//C64 OS Toolkit: ClassPtr (ClassById)

.label tkobj    = 0

.label tkview   = 1

.label tksplit  = 2
.label tktabs   = 3
.label tkscroll = 4

.label tklabel  = 5

.label tkctrl   = 6

.label tkbutton = 7
.label tksbar   = 8

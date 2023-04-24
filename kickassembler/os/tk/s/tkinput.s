#import "tksizes.s"
//----[ tkinput.s ]----------------------

//delegate struct
.label willins  = 0
.label didchng  = 2
.label didfoc   = 4
.label didblur  = 6

//----Editing Props------

.label istrlen  = tkctrlsz
.label ilenmax  = tkctrlsz+1
.label iindex   = tkctrlsz+2
.label ianchor  = tkctrlsz+3

//----Control Props------

.label idelegs  = tkctrlsz+4

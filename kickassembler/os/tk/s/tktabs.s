#import "tksizes.s"
//----[ tktabs.s ]-----------------------

//tktabs delegate struct
.label tabstr   = 0
.label willblur = 2
.label willfoc  = 4
.label didblur  = 6
.label didfoc   = 8

//----Selection Props----

.label curtab   = tkviewsz    // 1
.label tabsz    = tkviewsz+1  //10
.label tabcnt   = tkviewsz+11 // 1

.label hltab    = tkviewsz+12 // 1

//----Control Props----

.label delegate = tkviewsz+13 // 2

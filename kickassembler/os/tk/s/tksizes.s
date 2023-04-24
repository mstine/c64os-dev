#importonce 
//----[ tksizes.s ]----------------------

.label tkobjsz  = 2

.label tkviewsz = tkobjsz+37

.label tksplitsz = tkviewsz+6
.label tktabssz = tkviewsz+15
.label tkscrollsz = tkviewsz+7
.label tklabelsz = tkviewsz+5
.label tkctrlsz = tkviewsz+15

.label tkbuttonsz = tkctrlsz+8
.label tksbarsz = tkctrlsz+11

//Custom Classes

.label tkplacessz = tkviewsz+9
.label tklistsz = tkviewsz+10
.label tktablesz = tklistsz+2
.label tktcolssz = tkscrollsz+8
.label tkinputsz = tkctrlsz+6
.label tktextsz = tkviewsz+13
.label tkfilemetasz = tkviewsz+6
.label tkiconsz = tkctrlsz+3

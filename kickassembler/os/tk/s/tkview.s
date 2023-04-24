#import "tksizes.s"
//----[ tkview.s ]-----------------------

.label colcoord = $61 // $62 //multplr
.label rowcoord = $63 // $64 //multcnd

//----Responder Props----

.label nextresp = tkobjsz

//----Node Props---------

.label parent   = tkobjsz+2
.label child    = tkobjsz+4
.label sibling  = tkobjsz+6

.label tag      = tkobjsz+8

//----Sizing Props-------

.label offtop   = tkobjsz+9
.label offbot   = tkobjsz+11
.label absbot   = tkobjsz+13
.label height   = tkobjsz+15

.label offleft  = tkobjsz+17
.label offrght  = tkobjsz+19
.label absrght  = tkobjsz+21
.label width    = tkobjsz+23

.label rsmask   = tkobjsz+25

//----Scrolling Props----

.label s_top    = tkobjsz+26
.label s_left   = tkobjsz+28

//----Drawing Props------

.label dflags   = tkobjsz+30
.label mflags   = tkobjsz+31
.label bcolor   = tkobjsz+32

//----Hit Props----------

.label hitrow   = tkobjsz+33
.label hitcol   = tkobjsz+35

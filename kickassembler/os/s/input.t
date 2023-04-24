//----[ input.t ]------------------------

.label idrvpg   = $0801 //Input Driver Page #

.label dblclktm = $0288 //DblClick Jiffy Delay
.label mouseptr = $028f
.label mouseacc = $0290

.label musxpos  = $41 //$42 16-bit 0 to 319
.label musypos  = $43 //$44 16-bit 0 to 200
               //Room for overflow math

//musxpos  = $0242 //$0243
//musypos  = $0244 //$0245

.label mus0col  = $02fa
.label mus1col  = $02fb

.label musflgs  = $03fd

.label mouseon  = %00000001 //mouse On/Off
.label mousetrk = %00000010 //move events On/Off
.label mousemvd = %00000100 //mouse moved

          //%00001000 //reserved

.label mousehid = %00010000 //mouse hidden
.label mousepre = %00100000 //precision tracking

          //%01000000 //reserved

.label mouselft = %10000000 //left-handed mode


.label keymods  = $028d     //Modifier Keys Mask
.label musbtns  = $f2

.label lshftkey = %00000001
.label cbmkey   = %00000010
.label ctrlkey  = %00000100
.label rshftkey = %00001000

.label mus_shft = %00010000
.label mus_cbm  = %00100000
.label mus_ctrl = %01000000

.label lbutmask = %00010000 //Left but, Joy Fire
.label rbutmask = %00000001 //Rght but, Joy Up

//Mouse Event Types
.label move     = 0
.label ldown    = 1
.label ltrack   = 2
.label lup      = 3
.label lclick   = 4
.label ldclik   = 5
.label rdown    = 6
.label rtrack   = 7
.label rup      = 8
.label rclick   = 9
//reservd = 10
//reservd = 11
//reservd = 12
//reservd = 13
//reservd = 14
//reservd = 15

//----[ io_joy.s ]-----------------------

.label jdrvpg   = $0802 //Joystick Driver Page #

//Joystick Ports

.label jport1   = $0304
.label jport2   = $0305
.label jport3   = $0306
.label jport4   = $0307

//8 Joystick Buttons

.label jbut_up  = %00000001 //Up
.label jbut_dn  = %00000010 //Down
.label jbut_lt  = %00000100 //Left
.label jbut_rt  = %00001000 //Right
.label jbut_f1  = %00010000 //Fire 1 (A But)
.label jbut_f2  = %00100000 //Fire 2 (B But)
.label jbut_se  = %01000000 //Select
.label jbut_st  = %10000000 //Start




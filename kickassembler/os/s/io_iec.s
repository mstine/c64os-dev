//---[ io_iec.s ]------------------------

.label detectiec = $2a00 //2pages relocatable

.label drivemap = $0334 //(+8->30) $033c->$0353

//Drive Types
.label devnot   = 0     //No Device Present
.label devfor   = 1     //Foreign/Unknown Device
.label dev1541  = 41    //Commodore 1541
.label dev1571  = 71    //Commodore 1571
.label dev1581  = 81    //Commodore 1581

//Support Parts and Sub-Directories
.label devcmdfd = $80+2 //CMD FD2000/4000
.label devcmdhd = $80+3 //CMD HD
.label devcmdrl = $80+4 //CMD RamLink
.label devcmdrd = $80+5 //RamDrive/REU w/RamDos
.label devsdiec = $80+6 //SD2IEC/uIEC SD
.label devide64 = $80+7 //IDE64





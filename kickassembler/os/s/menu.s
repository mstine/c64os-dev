//----[ menu.s ]-------------------------

.label mnuicon  = $f2 //Hamburger menu, rvs'd
.label mnulayer = 3   //Highest of 4

.label tptr     = $50 //Text/Temp Pointer
.label lptr     = $52 //LastSib/Line Pointer
.label cptr     = $26 //ColorLine Pointer

.label rootpg   = $0382 //Menu Structure Root Pg
.label defpg    = $0383 //Menu Def's Root Page
.label defpgcnt = $0384 //Menu Def's Page Count
.label umdefpg  = $0385 //Util Def's Root Page
.label umdefpgc = $0386 //Util Def's Page Count

.label timutil  = $08cd //17 bytes
.label memutil  = $08de //17 bytes

.label statmode = $08ef

//Status Modes
.label stat_drv = 0 //Drive Status
.label stat_app = 1 //Application Custom
.label stat_fil = 2 //Path to Open File

//struct
.label nextptr  = 0 //2 bytes
.label childptr = 2 //2 bytes
.label titleptr = 4 //2 bytes
.label codeptr  = 6 //2 bytes
.label entrysize = 8
//menuentry

//struct
.label awidth   = 0 //1 byte
.label petvalue = 1 //1 byte
.label actcode  = 2 //1 byte
.label modkeys  = 3 //1 byte
.label actionsize = 4
//actioncode

//struct
.label hwidth   = 0  //1 byte
.label hopen    = 1  //1 byte
.label headersize = 2
//headercode

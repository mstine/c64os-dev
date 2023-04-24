//----[ file.s ]-------------------------

.label setlfs   = $ffba //Compatible
.label setnam   = $ffbd //Compatible
.label load     = $ffd5 //Compatible

.label open     = $ffc0 //Compatible
.label close    = $ffc3 //Compatible
.label save     = $ffd8 //Compatible

//--- File Constants ---

//LOAD Modes
.label loadop   = $00
.label verifyop = $01

//SETLFS before a LOAD
.label loadrel  = $00 //Relocate, ignore header
.label loaddef  = $01 //Load to header address

//SETLFS before an OPEN
.label cmdload  = $00
.label cmdsave  = $01
//I/O     = $02 through $0e
.label cmdchan  = $0f

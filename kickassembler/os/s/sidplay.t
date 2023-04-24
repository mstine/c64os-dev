//----[ sidplay.t ]----------------------

//Header for sidplay.lib.r

.label spirqvec = $0334 //$0335

.label sps_hold = $ff
.label sps_halt = $fe
.label sps_play = $fd

.label spi_name = $00
.label spi_auth = $01
.label spi_copy = $02

//Init called automatically by loadlib.
//init    = 0

//Unload called automatically by unldlib.
//unload  = 3

.label loadtune_ = 6
//  RegPtr -> File Ref to relocated SID
//  C <- CLR = SID file loaded.
//  A <- Number of songs loaded.
//  X <- Start Song #.

//  C <- SET = SID NOT loaded.

//  RegPtr -> NULL to unload tune.
//  C <- CLR = Unloaded.
//  C <- SET = Nothing was loaded.

.label stattune_ = 9
//  A -> Tune State{SHIFT--}Tune# to init

.label tuneinfo_ = 12
//  A      -> Sidplay Tune Info Index
//  RegPtr <- Pointer to info string

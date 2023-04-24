//----[ io_rec.s ]-----------------------

.label detectrec = $6400 //1 Page Relocatable

.label reubanks = $0281 //Detected REU Banks
.label appreubk = $0282 //First App REU Bank

.label reupage  = $0283 //Curr. App REU Page -lo
.label reubank  = $0284 //Curr. App REU Bank -hi

.label reu_inc  = $01   //Auto inc REU page/bank

//Ram Expansion Controller

.label rec      = $df00
.label rec_stat = $00
.label rec_cmd  = $01

.label rec_clo  = $02
.label rec_chi  = $03

.label rec_rlo  = $04
.label rec_rmi  = $05
.label rec_rhi  = $06

.label rec_llo  = $07
.label rec_lhi  = $08

.label rec_imsk = $09
.label rec_ac   = $0a

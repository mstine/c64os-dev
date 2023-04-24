#import "app.s"

//----[ util.frame.s ]-------------------

//Extended Exports Table in Utility.

.label scrlayer_ = utilbase+8
.label drawctx_ = utilbase+10
.label tkenv_   = utilbase+12
.label config_  = utilbase+14
.label confsize_ = utilbase+16

//Utility Framework's Jumptable

.label uf_kill  = $ff1b
.label uf_load  = $ff1e //Load Utility
.label uf_init  = $ff21
.label uf_quit  = $ff24
.label uf_mapc  = $ff27 //Map Colors
.label uf_draw  = $ff2a
.label uf_msrc  = $ff2d //Mouse Row/Col
.label uf_chkb  = $ff30 //Check Bounds

.label uf_pmus  = $ff33 //Mouse Evts
.label uf_kcmd  = $ff36 //KeyCmd Evts
.label uf_kprt  = $ff39 //KeyPrnt Evts

.label uf_link  = $ff3c

.label metapage = $ff3f

//uf_init config flags

.label uf_settit = %00000001
.label uf_clrbuf = %00000010
.label uf_cnfglb = %00000100
.label uf_swpicn = %00001000

.label uf_umodal = %10000000

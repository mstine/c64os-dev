//----[ app.t ]--------------------------

.label appbase  = $0900
.label utilbase = $e000

.label initextern = $02fc

//Application Jump Table
.label appinit  = 0 //App Initalizer
.label appmcmd  = 2 //Message Command
.label appquit  = 4 //App Will Quit
.label appfrze  = 6 //App Will Freeze to REU
.label appthaw  = 8 //App Will Thaw from REU

//Utility Jump Table
.label utilidnt = 0 //Util Identity
.label utilinit = 2 //Util Initializer
.label utilquit = 4 //Util Will Quit
.label utilmcmd = 6 //Message Command

//Message Commands
.label mc_mnu   = 0 //Menu Action
.label mc_menq  = 1 //Menu Action Enquiry
.label mc_col   = 2 //Selected Color

.label mc_fopn  = 3 //File Open
.label mc_fsav  = 4 //File Save

.label mc_stptr = 5 //Status Pointer

.label mc_mous  = 6 //Event (in Gfx Mode)
.label mc_kcmd  = 7 //Event (in Gfx Mode)
.label mc_kprt  = 8 //Event (in Gfx Mode)

.label mc_mptr  = 9 //Memory Pointer

.label mc_rflg  = 10 //Redraw Flags Changed
.label mc_hmem  = 11 //Hi Mem Usage Changed
.label mc_theme = 12 //TK Theme Changed
.label mc_chrs  = 13 //Custom Charset Changed
.label mc_devs  = 14 //Detected Devices Changed

.label mc_memw  = 15 //Low Memory Warning
.label mc_jobc  = 16 //Job Complete
.label mc_dmod  = 17 //Dir Entry Modified
.label mc_cpbd  = 18 //Clipboard Modified

.label mc_date  = 19 //Selected Date or Datetime
.label mc_fsel  = 20 //File Selection Change

.label mc_null  = $ff //No Message

//Menu Status Inquiry Flags
.label mnu_dis  = %00000001 //Entry Disabled
.label mnu_sel  = %00000010 //Entry Selected

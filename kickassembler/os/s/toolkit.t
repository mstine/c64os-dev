//----[ toolkit.t ]----------------------

.label this     = $2b //$2c THIS  pointer
.label class    = $2d //$2e CLASS pointer
.label pnode    = $2f //$30 PNODE pointer

.label rootview = $03ba //$03bb Root TK View

//View Resize Mask
.label rm_ankt  = %00000001 //anchor top
.label rm_ankb  = %00000010 //anchor bottom
.label rm_ankl  = %00000100 //anchor left
.label rm_ankr  = %00001000 //anchor right

.label rm_rschd = %10000000 //Resize Children

//View Display Flags
.label df_dirty = %00000001 //Needs redraw
.label df_sized = %00000010 //Don't resize
.label df_opaqu = %00000100 //Opaque

.label df_afkey = %00001000 //Accept 1st Key
.label df_afmus = %00010000 //Accept 1st Mouse
.label df_first = %00100000 //1st Key Responder

.label df_ibnds = %01000000 //Is within bounds
.label df_visib = %10000000 //Visible (not hid)

//View Modified Flags
.label mf_resiz = %00000010 //Needs resize
.label mf_bdchk = %01000000 //Needs bounds check

.label tkenvptr = $ef// $f0

//Toolkit Environment
.label te_dctx  = 0  //2 Draw Context Pointer
.label te_mpool = 2  //1 Memory Pool Page
.label te_flags = 3  //1 Env.Global Draw Flags
.label te_layer = 4  //1 Screen Layer
.label te_rview = 5  //2 Root view
.label te_fkeyv = 7  //2 First key view
.label te_fmusv = 9  //2 First mouse view
.label te_cmusv = 11 //2 Clicked mouse view
.label te_posx  = 13 //1 Ctx2scr X-Offset
.label te_posy  = 14 //1 Ctx2scr Y-Offset

.label tf_dirty = %00000001 //Update Rootview
.label tf_keyh  = %01000000 //Key Event Handled
.label tf_blur  = %10000000 //TKEnv Out of Focus

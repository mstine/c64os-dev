#importonce 
//----[ ctxdraw.t ]----------------------

.label tkcolors = $0387     //See ctxcolors.t

//Draw Context Flags
.label d_crsr_h = %00000001 //Crsr travels left
.label d_petscr = %01000000 //Convert Pet 2 Scr
.label d_revers = %10000000 //Reverse the char

//ZeroPage Draw Context
.label d_dcrsr  = $39 //$3a Draw Cursor
.label d_ccrsr  = $3b //$3c Color Cursor
.label d_outbnd = $3d //$3e Outbound Countdown

//Struct: Draw Context
.label d_ctx    = $039c

.label d_origin = 0          //Character Origin
.label d_coloro = d_origin+2 //Color Origin
.label d_bwidth = d_coloro+2 //Buffer Width

.label d_width  = d_bwidth+1 //0 to 40 columns
.label d_height = d_width+1  //0 to 25 rows
.label d_otop   = d_height+1 //offset top
.label d_oleft  = d_otop+2   //offset left

//Size of Draw Context to push to stack
.label d_size   = d_oleft+2

//Volatile Draw Context, set each draw
.label d_lrow   = d_oleft+2  //Local Row Coord
.label d_lcol   = d_lrow+2   //Local Col Coord
.label d_ibh    = d_lcol+2   //InBounds Horz.
.label d_ibv    = d_ibh+1    //InBounds Vert.

.label d_color  = d_ibv+1      //Draw Color
.label d_pet2scr = d_color+1   //Conversion Flag
.label d_reverse = d_pet2scr+1 //Reverse Flag
.label d_crsrmov = d_reverse+1 //Cursor Mover

.label d_redraw = d_crsrmov+1  //Redraw flags

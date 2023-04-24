//----[ screen.t ]-----------------------

.label screen_cols = 40
.label screen_rows = 25

.label split    = $3f //Current Screen Split Row
.label lastsplt = $40    //Last Screen Split Row

.label colhbuf  = $0300//$0301 Hires Color Buf
.label colmbuf  = $0302//$0303 Multi Color Buf

//When moving the split, line at a time:

//load colhbuf pointer to RegPtr
//load line # into .A and call scrrow
//write RegPtr to $fd/$fe temp ZP ptr
//load screen memory ptr to RegPtr
//same line # still in .A call scrrow
//write RegPtr to $fb/$fc temp ZP ptr
//load #screen_cols into .Y
//copy row of color data ($fd),y->($fb),y
//if multicolor bitmap, repeat to move
//a row from colmbuf to color memory.

.label rvs_mask = %10000000

//Struct: Screen Layer
.label sldraw   = 0 //Vec redraw screen
.label slmous   = 2 //Vec handle mouse event
.label slkcmd   = 4 //Vec handle key command
.label slkprt   = 6 //Vec handle key print
.label slindx   = 8 //This layer's pushed index

.label slsize   = 9 //sizeof a screen layer

.label current  = $0381 //Current Render Layer

//---[ filejobs.t ]----------------------

//A pointer to a FileJob must be passed
//in opnutilmdlo/hi with mcmd mc_mptr
//to the Copy, Move and Scratch Utils.

//FileJob Struct

.label fj_type  = 0 //4 Job Type Code
.label fj_sfref = 4 //1 Source File Ref  (pg)
.label fj_sdir  = 5 //1 Source Directory (pg)
.label fj_dfref = 6 //1 Dest. File Ref   (pg)
.label fj_vcb   = 7 //2 Validation Callback

//FileJob size = 9

//FileJob Types

//"cfop" Copy    with confirm button
//"mfop" Move    with confirm button
//"sfop" Scratch with confirm button
//"Cfop" Copy    auto-start
//"Mfop" Move    auto-start
//"Sfop" Scratch auto-start


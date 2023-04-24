//----[ dt.img.t ]-----------------------

//DataType:Image

//ImgInfo string indexes

.label dti_frmt = 0
.label dti_mode = 1
.label dti_pxsz = 2
.label dti_imsz = 3

//---[ Loaders ]-------------------------

//link = 0
//Called Automatically by loadreloc

.label imginfo  = 3
//Get Image Info String
//  A      -> String Index
//  RegPtr <- Info String

.label imgconf  = 6
//Configure read buffers and gfxctx
//  RegPtr -> GfxCtx pointer
//  A      -> First pg of bitmap buffer

.label imgload  = 9
//Load image into preconfigured buffers
//  imgconf must be called first.
//  RegPtr -> FileRef to img file to load
//  C <- Clr = Success
//  C <- Sec = Failure

//---[ Savers ]--------------------------

//TODO: Extend with Saver jump table

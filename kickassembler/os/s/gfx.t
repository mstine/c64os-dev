//----[ gfx.t ]--------------------------

//Header for gfx.lib.r

.label gfxlibpg = $08ca

//Init called automatically by loadlib.
//init    = 0

//Unload called automatically by unldlib.
//unload  = 3

.label procgfx_ = 6

//Called automatically by the IRQ handler
//c64os_service. Takes no parameters.

.label confgfx_ = 9
//  A -> mcmode
//  X -> bgmode

//Called by setgfx Service KERNAL call.



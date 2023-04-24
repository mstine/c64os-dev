//----[ memory.s ]-----------------------

//Memory Mapping Routines
.label seeram   = $02a7
.label seeioker = $02ac

//Other bits can be used in the map for
//taken to mean that the OS allocated
//them, or that they are in the REU, etc.

.label memmap   = $0800 //$08a0 (pages $09->$a0)

.label mapfree  = $00
.label mapsys   = $01  //Allocated by the system
.label maputil  = $02  //Allocated by the util
.label mapapp   = $ff  //Allocated by the app

//This is used so we don't have to pass
//the default memory pool into every call

.label mempool  = $0380 //Memory Pool Start Page

//Pages are allocated from the top down

//Page number of first page is configured
//and stored at mappgfst. But mappglst is
//static, it's always page #$09.

.label mappgfst = $08a1 //First Page (variable)
.label mappglst = $09   //Last  Page (constant)

//Memory Display Mode

.label memdisp  = $08cc //0=Pages,1=Kilobytes

//Struct
.label mhfree   = 0 //1 byte
.label mhlen    = 1 //2 bytes
.label mhsize   = 3
//Malloc Header

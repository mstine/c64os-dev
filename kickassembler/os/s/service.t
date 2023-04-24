//----[ service.t ]----------------------

.label jiffylo  = $a2       //Jiffy Clock 24-bit
.label jiffymi  = $a1
.label jiffyhi  = $a0
.label jcount   = $cd       //Jiffy Counter
.label jc_min   = $eb       //to $ee

.label sysjmp   = $54       //JMP jmpvec
.label jmpvec   = $55//$56

.label raw_rts  = $02b2     //Address of an RTS
.label sec_rts  = $02b3     //Set Carry,    RTS
.label clc_rts  = $02b5     //Clear Carry,  RTS

//sev      .macro           //SEt oVerflow
//         bit raw_rts
//         .endm

.label emptystr = $02b7     //Address of 0-Byte

.label sysfref  = $02c0     //System File Ref
.label homebase = $02e9     //Current Homebase

.label evttime  = $02ff     //CPUBusy Event Time
.label cpuusage = $0217     //CPU Usage History
.label busychar = $e6

.label loopbrkvec = $0336   //Event Loop Break
.label appfileref = $0338   //Current App Folder
.label opnfileref = $033a   //Auto-Open File

.label berrcode = $03b9     //BASIC Error Code
.label basicerr = $08f0     //BASIC Err Handler

//Patches in IO/KERNAL
//Redirects through redirectvec
//Patches IO/KERNAL out

.label redirect = $08f4     //KERNAL/IO Patch
.label redirectvec = $08f9  //JMP to address

//Pass message to Util as it opens.
.label opnutilmcmd = $03fa  //Message Command
.label opnutilmdlo = $03fb  //Message Data Lo
.label opnutilmdhi = $03fc  //Message Data Hi

//Pass message to App as it opens.
.label opnappmcmd = $03fa   //Message Command
.label opnappmdlo = $03fb   //Message Data Lo
.label opnappmdhi = $03fc   //Message Data Hi

.label syskvals = $02b8   //System Key Values
.label syskmods = $02bc   //System Key Modifiers

//When in rgraphix mode
//hmemuse will always have hmembitm set.

.label himemuse = $03fe   //Himem Usage

.label hmemfree = %00000000 //Free/Unused
.label hmemutil = %00000001 //Utility Executable
.label hmembuff = %00000010 //Generic Buffer
//...
.label hmembitm = %01000000 //Bitmap Mode Data
.label hmemmult = %10000000 //Multi-Col Bitmap

//Graphix State Struct

//--- gfx.lib requires first 6 bytes ---

.label ghimemflg = 0 //1 Byte  himem flags
.label gcolhptr = 1  //2 Bytes screen mem buf
.label gcolmptr = 3  //2 Bytes color  mem buf
.label gbgcol   = 5  //1 Byte  background color

//--- data loaders/savers need these ----

.label gbmapptr = 6  //2 Bytes bitmap mem buf
.label gchbufsz = 8  //1 Bytes scr mem buf sz
.label gcmbufsz = 9  //1 Bytes col mem buf sz
.label gbmbufsz = 10 //1 Bytes bit mem buf sz

             //11 Bytes Total


.label redrawflgs = $03ff //Redraw Active Flags

//rnewgfx informs the split code that
//graphics data needs to be copied from
//buffers again.

//renagfx signals whether full screen gfx
//mode should be entered or exited.

//rgraphix indicates if full screen gfx
//is currently active or not.

.label rnewgfx  = %00000001 //New GFX data
.label renagfx  = %00000010 //Enable Full GFX
.label rgraphix = %00000100 //Full GFX state

.label rmodal   = %00001000
.label rstatbar = %00010000
.label rcpubusy = %00100000
.label rclock   = %01000000
.label rmenubar = %10000000

//Shared Libraries

.label libchrlo = $08a2 //$08ab
.label libchrhi = $08ac //$08b5
.label libinfo  = $08b6 //$08bf
.label liblocs  = $08c0 //$08c9

//loadlib:
.label slnoinit = %10000000 //Skip Auto Init

//unldlib:
.label slunload = %10000000 //Make Unload Call

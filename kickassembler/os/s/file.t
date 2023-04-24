//----[ file.t ]-------------------------

//struct
.label frefdev  = 0  //  1 byte
.label frefpart = 1  //  1 byte
.label freflfn  = 2  //  1 byte
.label frefblks = 3  //  2 bytes
.label frefname = 5  // 17 bytes
.label frefpath = 22 //234 bytes
.label frefsize = 256
//fileref

//Partition 0 = Partition Directory

//File Flags
.label ff_r     = %00000001 //Read      in
.label ff_s     = %00000010 //Stat/Size in
.label ff_w     = %00000100 //Write     out
.label ff_a     = %00001000 //Append    out
.label ff_o     = %00010000 //Overwrite out
          //%00100000 //RESERVED
.label ff_p     = %01000000 //PRG       out
          //%10000000 //RESERVED

//--- Workspace Variables ---------------

.label status   = $90
.label filesopen = $98

.label fnamelen = $b7
.label currentlf = $b8
.label currentsa = $b9
.label currentdv = $ba
.label fnameptr = $bb //$bc

.label f_prefix = $0200 // 3 Bytes
.label f_name   = $0203 //16 Bytes +4 Flag Bytes

.label lfntab   = $0259

//Used only for momentary disk access:
//Load, Save or a Command.
//templfn is the largest possible LF#

.label templfn  = $7f

//Clipboard Metadata
.label c_dtype  = $0246
.label c_dstype = $0247
.label c_dsize  = $0248 //$0249

//Error Channel Status
.label l_code   = $0354 //Drive status as int
.label l_dev    = $0355 //Device of last status

//Device Error Channel
//stat,msg,trk,sec -> "00, ok,00,00"
.label l_stat   = $0356 //$0358   //Device Status
.label l_msg    = $0359 //$037a   //Message
.label l_trk    = $037b //$037d   //Track
.label l_sec    = $037e //$037f   //Sector

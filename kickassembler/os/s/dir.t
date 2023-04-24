//----[ dir.t ]--------------------------

.label frefptr  = $9b //$9c
.label deptr    = $22 //$23 //Was $fb //$fc
.label mdptr    = $24 //$25 //Was $fd //$fe

//Dir Entry Struct

.label fdbsiz   = 1   // 2 bytes (Alt., Part #)
.label fdname   = 3   //17 bytes
.label fdtype   = 20  // 1 byte
.label fdstatus = 21  // 1 byte

.label fdyear   = 22  // 1 byte
.label fdmnth   = 23  // 1 byte
.label fddate   = 24  // 1 byte
.label fdhour   = 25  // 1 byte
.label fdmin    = 26  // 1 byte

.label fdpetsz  = 27  // 5 bytes (PETSCII Size)

//File Type (not datatype)

.label ft_dir   = 0 //sort dir's to top
.label ft_prg   = 1
.label ft_rel   = 2
.label ft_seq   = 3
.label ft_usr   = 4
.label ft_del   = 5 //sort del's to bottom

//Partition Type

.label pt_nat   = 6
.label pt_41    = 7
.label pt_71    = 8
.label pt_81    = 9
.label pt_cpm   = 10
.label pt_cfs   = 11
.label pt_sys   = 12

//File Status Flags

.label fds_lock = %00000001
.label fds_hide = %00000010
.label fds_open = %00000100
.label fds_boot = %00001000 //IDE64 Boot Part.
.label fds_slct = %10000000

//Dir Metadata Struct

.label td_head  = 0  //17 Dir Header
.label td_did   = 17 // 2 Dir ID

.label td_free  = 19 // 2 Blocks Free (int)
.label td_pfree = 21 // 6 Blocks Free (PET)

.label td_part  = 27 // 2 Part # (int)
.label td_ppart = 29 // 4 Part # (PET)

.label td_fc    = 33 // 2 File Count  (int)
.label td_pfc   = 35 // 5 File Count  (PET)

.label td_patt  = 40 //17 File Pattern
.label td_type  = 57 // 1 File Type

.label td_sortf = 58 // 1 Sort Field
.label td_sorto = 59 // 1 Sort Options

.label td_sel   = 60 // 1 Selected File Count
.label td_flags = 61 // 1 Special Flags

//Sort Fields

//All sorts > ts_name subsort by ts_name

.label ts_disk  = 0
.label ts_name  = 1
.label ts_size  = 2
.label ts_type  = 3
.label ts_date  = 4

//Sort Options

.label ts_des   = %00000001 //Descending

//other bits reserved

.label ts_a2p   = %01000000 //ASCII 2 PETSCII
.label ts_case  = %10000000 //Case Insensitive

//Special Dev/Dir Flags

.label ts_apps  = %00000001 //Applications Dir
.label ts_utils = %00000010 //Utilities Dir
.label ts_dirs  = %00000100 //Dev Supports Dirs
.label ts_pdir  = %00001000 //Partition Dir
.label ts_time  = %00010000 //Include Date/Time

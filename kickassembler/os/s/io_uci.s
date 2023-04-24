//----[ io_uci.s ]-----------------------

//Ultimate Command Interface

.label uci      = $df00

.label uci_ctrl = $1c //Use with Write
.label uci_stat = $1c //Use with Read

.label uci_cmd  = $1d //Use with Write
.label uci_id   = $1d //Use with Read

.label uci_resp = $1e //Data Response (readonly)
.label uci_sdat = $1f //Status Data   (readonly)

//Control Register Flags

.label uci_pcmd = %00000001 //Push Command
.label uci_dacc = %00000010 //Data Accepted
.label uci_abrt = %00000100 //Abort
.label uci_cerr = %00001000 //Clear Error

//Status Register Flags

.label uci_cbsy = %00000001 //Command Busy
          //%00000010 //Data Accepted
          //%00000100 //Abort
.label uci_eror = %00001000 //Error
.label uci_smsk = %00110000 //State Mask
.label uci_stav = %01000000 //State Available
.label uci_dtav = %10000000 //Data  Available

//Status Register States

.label uci_idle = %00000000 //Idle
.label uci_busy = %00010000 //Command Busy
.label uci_dlst = %00100000 //Data Last
.label uci_dmor = %00110000 //Data More

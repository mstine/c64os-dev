#importonce 
//----[ modules.h ]----------------------

.label sltb     = $d000-(2*10)

//Under $cxxx for IDE64

.label sser     = sltb-$06fc
.label sinp     = sser-$0574
.label smat     = sinp-$0130
.label stim     = smat-$020c

.label smem     = stim-$028a
.label sstr     = smem-$014b
.label sfil     = sstr-$0537
.label sscr     = sfil-$069f
.label smnu     = sscr-$089d
.label stkt     = smnu-$0548

.macro syscall(lxxx, routine) {
    .byte lxxx
    .word routine
}

// TODO: KA only supports String constant args to .include and #include
// May not need these, but circle back...

/*
inc_h    .segment
         .include "os/h/@1.h"
         .endm

inc_s    .segment
         .include "os/s/@1.s"
         .endm

inc_k    .segment
         .include "os/s/ker/@1.s"
         .endm

inc_tkh  .segment
         .include "os/tk/h/@1.h"
         .endm

inc_tks  .segment
         .include "os/tk/s/@1.s"
         .endm
*/

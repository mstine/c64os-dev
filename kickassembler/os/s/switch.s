#import "../../ka/tmp.s"

.macro switch(caseCount) {
         //A -> switch code
         //A is preserved if not found.
         stx tab-2           //Stash .X
         ldx #caseCount

loop:    dex
         bmi tab+(caseCount*3)
         cmp tab,x
         bne loop

         sta tab-4           //Stash .A

         txa
         asl
         tax

         lda tab+caseCount+1,x
         pha
         lda tab+caseCount,x
         pha
         lda #$ff            //Restore .A
         ldx #$ff            //Restore .X
         rts               //Jump To .RTA
tab:
}

.assert "switch with 1",{
    :switch(1)
    .text "!"
    :rta(List().add($d012))
},
{
         stx tab-2
         ldx #1
loop:    dex
         bmi tab+3
         cmp tab,x
         bne loop
         sta tab-4
         txa
         asl
         tax
         lda tab+2,x
         pha
         lda tab+1,x
         pha
         lda #$ff        
         ldx #$ff        
         rts             
tab:
    .text "!"
    .byte $11,$d0
}

.assert "switch with 2",{
    :switch(2)
    .byte $c0,$d0
    :rta(List().add($d012,$f302))
},
{
         stx tab-2
         ldx #2
loop:    dex
         bmi tab+6
         cmp tab,x
         bne loop
         sta tab-4
         txa
         asl
         tax
         lda tab+3,x
         pha
         lda tab+2,x
         pha
         lda #$ff        
         ldx #$ff        
         rts             
tab:
    .byte $c0,$d0
    .byte $11,$d0
    .byte $01,$f3
}

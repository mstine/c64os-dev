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

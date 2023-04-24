#import "pointer.s"

//----[ string.s ]-----------------------

//Requires: pointer.s


//Used by strins/strdel

.label strptr   = $61 //$62
.label stralt   = $63 //$64

.macro stradd(ptr, string) {
    //X -> string start index
    //Y -> pointer start index
    lda string,x
    sta (ptr),y
    beq *+6
    iny
    inx
    bne *-9
}

//Call these macros before a set
//of null terminated strings.

.macro strxyget() {        //48-Byte Routine
         //A      -> String Number
         //RegPtr <- String Pointer

         :ldxy(strings)
         cmp #0
         bne *+3
         rts

         sta index
         :stxy(search+1)

next:    cmp #0
         bne search

         dec index
         beq found

search:  lda $ffff

         inc search+1
         bne next
         inc search+2
         bne next

found:   :rdxy(search+1)
         rts

index:   .byte 0

strings:
}

.macro straxget() {         //52-Byte Routine
         //A   -> String Number
         //A/X <- String Pointer
         //Preserves Y

         cmp #0
         bne *+7

         lda #<strings
         ldx #>strings
         rts

         ldx #<strings
         stx search+1
         ldx #>strings
         stx search+2

         sta index

next:    cmp #0
         bne search

         dec index
         beq found

search:  lda $ffff

         inc search+1
         bne next
         inc search+2
         bne next

found:   lda search+1
         ldx search+2
         rts

index:   .byte 0

strings:
}

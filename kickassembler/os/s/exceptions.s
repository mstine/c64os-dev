//----[ exceptions.s ]-------------------

.label regstore = $c8     //A/X/Y +0/+1/+2

.label backregs = $03bc   //Temp Stashes A/X/Y
.label readregs = $03c3   //Reads A/X/Y Back In

.label try_     = $03ca   //Exception Handler
.label exception = $03df  //Raise an Exception

.label excindex = $c7     //Exceptions Tab Index

.label excaddr  = $0e//$0f //Exception Address

.macro try(catch) {
    jsr backregs
    lda #<catch
    ldx #>catch
    jsr try_
} //10 bytes

//Use exittry if there is no catch block.

.macro exittry() {
    dec excindex
} //2 bytes

//Use endtry to skip the catch block.

.macro endtry(endcatch) {
    :exittry()
    jmp endcatch
} //5 bytes

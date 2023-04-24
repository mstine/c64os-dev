//----[ c.s ]----------------------------

//This is an experimental idea,for macros
//to make it easier to pass args on the
//stack. And pop them after the call.

//C Function Calls
.macro carg16(lowByte, highByte) {
    lda #<lowByte
    pha
    lda #>highByte
    pha
}

.macro carg8(arg) {
    lda #arg
    pha
}

.macro ccall(routine, sizeOfArgs) {
    jsr routine

    //pop arguments from the stack
    tsx
    txa
    clc
    adc #sizeOfArgs
    tax
    txs
}

//----[ inttohex.s ]---------------------

//Deprecated. Use tohex in Math Module.

tohex:    //.A -> An int 0+255
         //.X <- Lo Nybble Hex
         //.Y <- Hi Nybble Hex
{
    pha
    pha

    lsr
    lsr
    lsr
    lsr
    tax
    lda hexits,x
    tay

    pla
    and #$0f
    tax
    lda hexits,x
    tax

    pla
    rts

hexits:   .text "0123456789abcdef"
}

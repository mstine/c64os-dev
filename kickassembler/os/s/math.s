//----[ math.s ]---------------------

.label divisor  = $61//$62
.label dividnd  = $63//$64
.label remandr  = $65//$66
.label divrslt  = $63//$64 -> dividnd
.label divrond  = $67

.label multplr  = $61//$62
.label multcnd  = $63//$64
.label product  = $65//$66 $67 $68 //32-bit

//16-bit inc/dec, addition and subtract

.macro inc16(arg) {    //16-bit increment
         inc arg                //Lo Byte
         bne done              //Rollover
         inc arg+1              //Hi Byte
done:
}

.macro dec16(arg) {    //16-bit decrement
         lda arg           //Test Lo Byte
         bne declo
         dec arg+1              //Hi Byte
declo:   dec arg                //Lo Byte
}

.macro add816(ptr, int8) { //ptr += int8
    clc
    lda ptr
    adc #int8
    sta ptr

    bcc done
    inc ptr+1
done:
}

.macro sub816(ptr, int8) { //ptr -= int8
    sec
    lda ptr
    sbc #<int8
    sta ptr

    bcs done
    dec ptr+1
done:
}

.macro add16(ptr, int8) { //ptr += int16
    clc
    lda ptr
    adc #<int8
    sta ptr

    lda ptr+1
    adc #>int8
    sta ptr+1
}

.macro sub16(ptr, int16) { //ptr -= int16
    sec
    lda ptr
    sbc #<int16
    sta ptr

    lda ptr+1
    sbc #>int16
    sta ptr+1
}

.macro add16ptr(ptrA, ptrB) { //ptr += ptr
    clc
    lda ptrA
    adc ptrB
    sta ptrA

    lda ptrA+1
    adc ptrB+1
    sta ptrA+1
}

.macro sub16ptr(ptrA, ptrB) { //ptr -= ptr
    sec
    lda ptrA
    sbc ptrB
    sta ptrA

    lda ptrA+1
    sbc ptrB+1
    sta ptrA+1
}

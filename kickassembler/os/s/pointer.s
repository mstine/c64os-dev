#import "../h/toolkit.h"
#import "../h/modules.h"

//----[ pointer.s ]----------------------

.macro rdxy(ptr) { //Reads Ptr into X/Y
    ldx ptr
    ldy ptr+1
}

.macro ldxy(address) { //Loads X/Y with address
    ldx #<address
    ldy #>address
}

.macro stxy(address) {
    stx address
    sty address+1
}

//---------------------------------------
//Get and Set RegPtr from Store

.macro storeset(store, index) {
    stx store+(index*2)
    sty store+(index*2)+1
}

.macro storeget(store, index) {
    ldx store+(index*2)
    ldy store+(index*2)+1
}

//---------------------------------------
//Toolkit Helpers

.macro classmethod(method_offset) {
    jsr setclass_+stkt
    ldy #method_offset
    jsr getmethod_+stkt
}

.macro supermethod(method_offset) {
    jsr setsuper_+stkt
    ldy #method_offset
    jsr getmethod_+stkt
}

//---------------------------------------
//Flag Manipulation

.macro setflag(ptr, index, flags) {
    ldy #index
    lda (ptr),y
    ora #flags
    sta (ptr),y
}

.macro clrflag(ptr, index, flags) {
    ldy #index
    lda (ptr),y
    and #flags^$ff
    sta (ptr),y
}

.macro togflag(ptr, index, flags) {
    ldy #index
    lda (ptr),y
    eor #flags
    sta (ptr),y
}

//---------------------------------------
//Setters and Getters

.macro setobj8(ptr, offset, int8) {
    ldy #offset
    lda #int8
    sta (ptr),y
}

.macro setobj16(ptr, offset, int16) {
    ldy #offset
    lda #<int16
    sta (ptr),y
    iny
    lda #>int16
    sta (ptr),y
}

.macro setobjptr(ptr, offset, argPtr) {
    ldy #offset
    lda argPtr
    sta (ptr),y
    iny
    lda argPtr+1
    sta (ptr),y
}

.macro setobjxy(ptr, offset) { // +(RegWrd)
    tya
    ldy #offset+1
    sta (ptr),y
    dey
    txa
    sta (ptr),y
}

.macro rdobj16(ptr, offset) {
    //RegPtr <- property
    ldy #offset
    lda (ptr),y
    tax
    iny
    lda (ptr),y
    tay
}

.macro getobj16(ptr, offset, to) {
    //A <- property hi byte
    ldy #offset+1  //offset hi byte
    lda (ptr),y
    pha
    dey        //offset lo byte
    lda (ptr),y
    sta to     //Save lo byte
    pla
    sta to+1   //Save hi byte
}

//---------------------------------------

.macro pushxy() {
    tya //Hi
    pha
    txa //Lo
    pha
}

.macro pullxy() {
    pla
    tax //Lo
    pla
    tay //Hi
}

.macro push16(word) { //word to put on stack
    lda #>word //Hi
    pha
    lda #<word //Lo
    pha
}

.macro pushptr(ptr) { //ptr to put on stack
    lda ptr+1 //Hi
    pha
    lda ptr   //Lo
    pha
}

.macro pull16(ptr) { //ptr to pull from stack
    pla
    sta ptr   //Lo
    pla
    sta ptr+1 //Hi
}

//---------------------------------------

.macro copy16(word, dest) {
    lda #<word
    sta dest   //1st: lo byte
    lda #>word
    sta dest+1 //2nd: hi byte
}

.macro copyptr(ptr, dest) {
    lda ptr
    sta dest   //1st: lo byte
    lda ptr+1
    sta dest+1 //2nd: hi byte
}

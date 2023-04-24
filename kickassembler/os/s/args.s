//----[ args.s ]-------------------------

.label argptr   = $45 //$46

.macro arg8(index, addr) {
         ldy #index+1
         lda (argptr),y
         sta addr
}

.macro arg16(index, addr) {
    arg8(index, addr)
    iny
    lda (argptr),y
    sta addr+1
}

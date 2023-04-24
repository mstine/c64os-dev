//----[ branch16.s ]---------------------

//16-bit Short Branches

.macro b_ifnull(ptr, branchLabel) {
    lda ptr
    ora ptr+1
    beq branchLabel
}

.macro b_ifset(ptr, branchLabel) {
    lda ptr
    ora ptr+1
    bne branchLabel
}

//16-bit Long Branches

.macro bl_ifnull(ptr, branchLabel) {
    lda ptr
    ora ptr+1
    bne *+3
    jmp branchLabel
}

.macro bl_ifset(ptr, branchLabel) {
    lda ptr
    ora ptr+1
    beq *+3
    jmp branchLabel
}

//Long Branches

.macro bcc_(branchLabel) {
    bcs *+5
    jmp branchLabel
}

.macro bcs_(branchLabel) {
    bcc *+5
    jmp branchLabel
}

.macro beq_(branchLabel) {
    bne *+5
    jmp branchLabel
}

.macro bne_(branchLabel) {
    beq *+5
    jmp branchLabel
}

.macro bmi_(branchLabel) {
    bpl *+5
    jmp branchLabel
}

.macro bpl_(branchLabel) {
    bmi *+5
    jmp branchLabel
}

.macro bvc_(branchLabel) {
    bvs *+5
    jmp branchLabel
}

.macro bvs_(branchLabel) {
    bvc *+5
    jmp branchLabel
}

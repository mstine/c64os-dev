//----[ compare16.s ]--------------------

//16-bit Comparisons
.macro gtewrd(num1, word, lessThanLabel) {
    lda num1+1
    cmp #>word
    bcc lessThanLabel
    bne gte
    lda num1
    cmp #<word
    bcc lessThanLabel
gte:
}

.macro gte16(num1, num2, lessThanLabel) {
    lda num1+1
    cmp num2+1
    bcc lessThanLabel
    bne gte
    lda num1
    cmp num2
    bcc lessThanLabel
gte:
}

.macro eqwrd(num1, word, notEqualsLabel) {
    lda num1
    cmp #<word
    bne notEqualsLabel
    lda num1+1
    cmp #>word
    bne notEqualsLabel
}

.macro eq16(num1, num2, notEqualsLabel) {
    lda num1
    cmp num2
    bne notEqualsLabel
    lda num1+1
    cmp num2+1
    bne notEqualsLabel
}

#importonce

/*
 * nullStr
 * 
 * Provides the equivalent of .null in TMP/TMPx. Creates null-terminated
 * .strings.
 *
 * string -> the .text to insert with a null-terminator
 */
.macro nullStr(string) {
   .text string
   .byte 0 
}

.assert "makes a null-terminated string",{
   nullStr("Hello World!")
},{
   .text "Hello World!"
   .byte 0
}

/*
 * rta
 * 
 * Provides the equivalent of .rta in TMP/TMPx. Creates a .byte
 * table from a List of .word. Each .word is decremented and appended
 * in lo/hi-byte order.
 *
 * wordList -> a KickAssembler List of .word
 */
.macro rta(wordList){
   .for(var i = 0; i < wordList.size(); i++) {
      .var nextWord = wordList.get(i)
      .byte <nextWord-1,>nextWord-1
   }
}

.assert "rta generates decremented words in lo/hi byte order",{
   rta(List().add($fce2,$d012,$0969))
},
{
   .byte $e1,$fc
   .byte $11,$d0
   .byte $68,$09
}

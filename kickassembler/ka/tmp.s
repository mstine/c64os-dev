.macro nullStr(string) {
   .text string
   .byte 0 
}

.macro rta(wordList){
   .for(var i = 0; i < wordList.size(); i++) {
      .var nextWord = wordList.get(i)
      .eval nextWord--
      .byte <nextWord,>nextWord
   }
}

.assert "rta generates decremented words in hi/lo byte order",{
   rta(List().add($fce2,$d012))
},
{
   .byte $e1,$fc
   .byte $11,$d0
}

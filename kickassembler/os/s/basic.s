//----[ basic.s ]------------------------

//HOW TO USE:
//
// .include this file as first code.
// Omit the *= $xxxx from your code.

         *= $0801

         .word end    //Next Line Ptr
         .word 64     //Line #64 ;)

         .byte $9e    //SYS
         .text "2061" //$080d
         .byte 0      //null-terminate string (KA has no .null directive)

end:     .word $00    //End of Basic








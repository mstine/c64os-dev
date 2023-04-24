//----[ string.t ]-----------------------

.label lstr     = $0100-(2*3)       //3rd Module

.label strlen_  = 0
//  RegPtr -> Pointer to c-string
//  RegWrd <- String Length

.label strcpy_  = 3
//  X -> ZP Address to source c-string
//  Y -> ZP Address to destin c-string
//  A -> ZP to 16-bit length to copy

//---------------------------------------

.label asc2pet_ = 6
//  A -> ASCII character
//  A <- PETSCII character

.label pet2asc_ = 9
//  A -> PETSCII character
//  A <- ASCII character

.label pet2scr_ = 12
//  A -> PETSCII character
//  A <- Screen Code

//---------------------------------------

.label tolower_ = 15
//  A -> Mixedcase character
//  A <- Lowercase character

.label toupper_ = 18
//  A -> Mixedcase character
//  A <- Uppercase character

.label isdigit_ = 21
//  A -> PETSCII character
//  C <- Set is a digit
//  C <- Clr is non digit

//---------------------------------------

.label strdel_  = 24
//  strptr -> Pointer to c-string
//  Y -> start index
//  A -> depth

.label strins_  = 27
//  strptr -> Pointer to c-string
//  Y -> start index
//  A -> depth

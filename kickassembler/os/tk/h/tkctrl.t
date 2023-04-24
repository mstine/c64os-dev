#import "classes.h"
//----[ tkctrl.t ]-----------------------

//----Target/Action--------

.label settgt_  = tcviewsz
//  A -> Action Method
//  if !actionmethod
//    RegPtr -> Routine Ptr
//  else
//    RegPtr -> null (uses firstkey view)
//    RegPtr -> Target Object

.label sendact_ = tcviewsz+3

//----Value Methods--------

.label setbyt_  = tcviewsz+6   //Int/Char/Byte
.label setwrd_  = tcviewsz+9   //Double/16-bit
.label setflt_  = tcviewsz+12  //BASIC Float
.label setstr_  = tcviewsz+15  //String Pointer

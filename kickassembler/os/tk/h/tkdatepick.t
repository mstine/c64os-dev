#import "classes.h"
//----[ tkdatepick.t ]-------------------

.label dprtcyc_ = tcviewsz
//  sender -> child button with tag

.label setdate_ = tcviewsz+3
//  Y -> Year  ($00 = 1900, $ff = 2155)
//  X -> Month ($01 = Jan)
//  A -> Date  ($01 = 1st of month)

.label getdate_ = tcviewsz+6
//  Y <- Year  ($00 = 1900, $ff = 2155)
//  X <- Month ($01 = Jan)
//  A <- Date  ($01 = 1st of month)

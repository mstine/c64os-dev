//----[ path.t ]-------------------------

//link    = 0

.label setname  = 3
//  Set fileref's name from string
//  RegPtr -> Str Pointer
//  A      -> Fref Page #

.label pathadd  = 6
//  Append string+"/" to path
//  RegPtr -> Str Pointer
//  A      -> Fref Page #

.label pathup   = 9
//  Go up one directory level
//  A -> Fref Page #

.label partroot = 12
//  Go to root dir of partition
//  A -> Fref Page #

.label devroot  = 15
//  Go to root dir of device
//  A -> Fref Page #

.label gopath   = 18
//  Configure fref from place code
//  A -> Fref Page #
//  X -> Place Code

.label frclip   = 21
//  Fileref to/from clipboard
//  A -> Fref Page #
//  C -> CLR conf fref from CB
//  C -> SET copy fref to   CB

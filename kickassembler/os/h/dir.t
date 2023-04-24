//----[ dir.t for dir.lib.r ]------------

.label getdirp_ = 0
//  A <- directory chain root page

.label freedir_ = 3
//  A -> directory chain root page

.label readdir_ = 6
//  mdptr   -> directory metadata
//  frefptr -> fref w/path to load
//  X <- directory chain root page
//  C <- SET on error.

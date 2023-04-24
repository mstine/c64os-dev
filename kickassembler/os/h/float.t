//----[ float.t ]----------------------

//*************************************
//* ==-- FLOATING POINT ROUTINES --== *
//*************************************

//Text Conversion Routines

.label strfac   = $bcf3
//txtptr -> pointer to string
//fac <- floating point number

.label facstr   = $bddd
//fac -> floating point number
//A/Y <- pointer to string conversion

.label chrget   = $73
.label chrgot   = $79

//Int to Float Conversions

.label int8fac  = $bc3c
//A -> Signed 8bit Int
//fac <- floating point number

.label uint8fac = $b3a2
//Y -> Unsigned 8bit Int
//fac <- floating point number

.label int16fac = $b395
//A -> Signed 16bit Int lo byte
//Y -> Signed 16bit Int hi byte
//fac <- floating point number


//Float to Int Conversions

.label facint32 = $bc9b
//fac -> floating point number
//$62 <- Signed 32bit Int


//Memory Move Functions

.label facmem   = $bbd4
//fac -> float
//RegPtr -> Pointer to where to copy FAC

.label memfac   = $bba2
//A/Y -> float
//fac <- float

.label memarg   = $ba8c
//A/Y -> float
//arg <- float

.label facarg   = $bc0c
//fac -> float
//arg <- float

.label argfac   = $bbfc
//arg -> float
//fac <- float


//Floating Point Functions: FAC = F(FAC)

.label fp_rnd   = $e097

.label fp_abs   = $bc58
.label fp_sgn   = $bc39
.label fp_exp   = $bfed
.label fp_int   = $bccc

.label fp_log   = $b9ea
.label fp_sqr   = $bf71

.label fp_sin   = $e26b
.label fp_cos   = $e264
.label fp_tan   = $e2b4
.label fp_atn   = $e30e


//Arithmetic Operations

.label memplus  = $b867
//fac -> float
//A/Y -> float
//fac <- fac+mem

.label plus     = $b86a
//fac -> float
//arg -> float
//A   -> fac exp
//fac <- fac+arg


.label memminus = $b850
//fac -> float
//A/Y -> float
//fac <- mem-fac

.label minus    = $b853
//fac -> float
//arg -> float
//A   -> fac exp
//fac <- arg-fac


.label memmult  = $ba28
//fac -> float
//A/Y -> float
//fac <- fac*mem

.label mult     = $ba2b
//fac -> float
//arg -> float
//A   -> fac exp
//fac <- fac*arg


.label memdivi  = $bb0f
//fac -> float
//A/Y -> float
//fac <- mem/fac

.label divi     = $bb12
//fac -> float
//arg -> float
//A   -> fac exp
//fac <- arg/fac


.label mempow   = $bf78
//arg -> float
//A/Y -> float
//fac <- arg^mem

.label power    = $bf7b
//fac -> float
//arg -> float
//A   -> fac exp
//fac <- arg^fac


.label mult10   = $bae2
//fac -> float
//fac <- fac*10

.label divi10   = $bafe
//fac -> float
//fac <- fac/10


//Logical Operations: On int16 conversion

.label fp_or    = $afe6
//fac -> float
//arg -> float
//fac <- float(int16(arg){SHIFT--}int16(fac))

.label fp_and   = $afe9
//fac -> float
//arg -> float
//fac <- float(int16(arg)&int16(fac))

.label fp_not   = $aed4
//fac -> float
//fac <- float(!int16(fac))


//Other Operations

.label fp_cmp   = $bc5b
//fac -> float
//A/Y -> float
//A   <- mem > fac

.label fp_round = $bc1b
//fac -> float
//fac <- round(fac)

.label fp_chgsgn = $bfb4
//fac -> float
//fac <- fac*-1

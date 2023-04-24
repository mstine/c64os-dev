//----[ float.s ]------------------------

.label fac      = $61
.label arg      = $69

.label txtptr   = $7a//$7b

//Floating Point Constants

.label pi       = $aea8  //PI
.label pi2_1    = $e2e5  //PI * 2
.label pi1_2    = $e2e0  //PI / 2

.label neg1_2   = $b9e0  //-0.5
.label zero     = $ecb9  // 0
.label pos1_4   = $e2ea  // 0.25
.label pos1     = $b9bc  // 1
.label pos10    = $baf9  // 10

.label int16min = $b1a6  //-32768

.label pos1_sqr2 = $b9d6 //1/SQR(2)
.label possqr2  = $b9db  //SQR(2)

.label pos1_log2 = $bfbf //1/LOG(2)
.label poslog2  = $b9e5  //LOG(2)


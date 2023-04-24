//----[ io_i2c.s ]-----------------------

//Header for i2c.lib.r

//Init called automatically by loadreloc

//init_   = 0

.label reset_   = 3
//  Takes no parameters.
//  Resets the I2C Bus.

.label prep_rw_ = 6
//  Regptr -> Pointer to memory buffer
//  A      -> Read/Write data length
//            (maximum 256 bytes)

//prep_rw must be called before a call to
//either readreg or writreg.

.label readreg_ = 9
//  Initialize with i2c_prep_rw
//  A -> i2c device address
//  Y -> device register
//  C -> Set = skip register write
//  A <- ok/nok response 0 = ok
//
//Register contents will be read from
//i2c device and copied to memory buffer.

.label writreg_ = 12
//  Initialize with i2c_prep_rw
//  A -> i2c device address
//  Y -> device register
//  A <- ok/nok response 0 = ok
//
//Contents of memory buffer will be
//written to the i2c device's register(s)

//---------------------------------------

.label slvwait  = 50 //wait time for slave
                     //to ack the address

.label datareg  = $dd01 //CIA 2 PortB
.label datadir  = $dd03 //1 = output, 0 = input

//response codes
.label ret_ok   = 0 //Not an error
.label ret_nok  = 1

.label err_sdalo = 2
.label err_scllo = 3

//i2c address flags
.label writebit = 0    //in i2c address byte
.label readbit  = 1    //in i2c address byte
.label purebyte = $ff  //don't modify data byte

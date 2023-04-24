//---[ rtc.t ]---------------------------

.label t_secs   = $dc09 //cia1
.label t_mins   = $dc0a //cia1
.label t_hour   = $dc0b //cia1

.label d_dow    = $03b2
.label d_year   = $03b3
.label d_month  = $03b4
.label d_day    = $03b5

.label t_twelve = $03b6 //$a0=24Hrs,$00=12Hrs
.label t_blinks = $03b7 //$a0=blink,$ba=no blink

//rtc.iec.r supports:
// CMD HD
// CMD FD
// CMD RL
// IDE64
// SD2IEC

//rtc.uci.r supports:
// 1541 Ultimate II+
// Ultimate 64

//rtc.i2c.r supports:
// A DS3231 on I2C bus with i2c.lib

//TODO: driver for CMD SmartMouse

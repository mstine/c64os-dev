//----[ io_uaudio.s ]--------------------

//1541 Ultimate II+: Ultimate Audio

.label ua_ch1   = $df20
.label ua_ch2   = $df40
.label ua_ch3   = $df60
.label ua_ch4   = $df80
.label ua_ch5   = $dfa0
.label ua_ch6   = $dfc0
.label ua_ch7   = $dfe0

.label ua_ctrl  = $00
.label ua_vol   = $01
.label ua_pan   = $02

.label ua_shi   = $04 //Big Endian
.label ua_smh   = $05
.label ua_sml   = $06
.label ua_slo   = $07

.label ua_lhi   = $08 //Big Endian
.label ua_lmi   = $09
.label ua_llo   = $0a

.label ua_rhi   = $0e //Big Endian
.label ua_rlo   = $0f

.label ua_rahi  = $11 //Big Endian
.label ua_rami  = $12
.label ua_ralo  = $13

.label ua_rbhi  = $15 //Big Endian
.label ua_rbmi  = $16
.label ua_rblo  = $17

.label ua_iclr  = $1f

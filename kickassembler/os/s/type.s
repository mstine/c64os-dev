//----[ type.s ]-------------------------

//C64 OS data types

//Like MIME types, each C64 OS data type
//has a type and subtype, 1 byte each.
//Subtype is unique per type.

.label ct_text  = 0

.label ct_pettxt = 0
.label ct_asctxt = 1
.label ct_mtext = 2
.label ct_email = 3
.label ct_weburl = 4
.label ct_date  = 5
.label ct_dattim = 6
.label ct_fref  = 7
//ct_???   = 8
.label ct_number = 9
.label ct_tel   = 10
.label ct_cal   = 11
.label ct_html  = 12
.label ct_xml   = 13

.label ct_appl  = 1

.label ct_zip   = 0
.label ct_float = 1
.label ct_base64 = 2
.label ct_gzip  = 3
.label ct_uuenc = 4

.label ct_audio = 2

.label ct_raw   = 0
.label ct_aiff  = 1
.label ct_wave  = 2
.label ct_sid   = 3
.label ct_mod   = 4
.label ct_mp3   = 5
.label ct_midi  = 6
.label ct_snd   = 7

.label ct_image = 3

.label ct_multc = 0
.label ct_hires = 1
.label ct_koala = 2
.label ct_arts  = 3
.label ct_jpeg  = 4
.label ct_gif   = 5
.label ct_4bit  = 6
.label ct_3icon = 7

.label ct_video = 4

.label ct_hdx   = 0

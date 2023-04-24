//---[ c64archive.t ]--------------------

//Archive Header

.label car_type = 0   //OS Archive Type
.label car_magic = 1  //"C64Archive"
.label car_ver  = 11  //Version #
.label car_date = 12  //YMDhm 5-byte format
.label car_note = 17  //30 char note+NULL

//File Header

//car_type = 0  //(p/s/d) ... maybe others
.label car_lock = 1   //1 = Locked
.label car_size = 2   //filesize or DIR children
.label car_name = 5   //Petsii, padded with $a0
.label car_comp = 21  //This file's compression

//Compression Types

//0 = None (default)
//1 = RLE
//2 = LZ

//OS Archive types are used to tell the
//C64 Installer where to put the output
//folder. If it's of install type,
//the contents of the install start at
//the system directory, and overlay its
//subdirectories. This can put libs in
///library/, drivers in /drivers/, apps
//and utilities in their directories.

//OS Archive Types

.label at_gnrl  = 0 //General, any file or dir
.label at_rstr  = 1 //Restore, sys directory
.label at_instl = 2 //Install, sys overlay

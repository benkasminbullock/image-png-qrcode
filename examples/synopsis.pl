#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use Image::PNG::QRCode 'qrpng';
qrpng (text => 'boom shake shake shake the room', out => 'shake.png');


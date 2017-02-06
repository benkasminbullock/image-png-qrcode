#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use Image::PNG::QRCode 'qrpng';
use URI;
my $data = 'abcdefghijklmnopqrstuvwxyz';
my $u = URI->new ('data:');
$u->media_type ('image/png');
qrpng (text => $data);
#print "$u\n";

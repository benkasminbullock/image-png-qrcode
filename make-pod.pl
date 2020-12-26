#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use lib "$Bin/copied/lib";
use Perl::Build::Pod ':all';
simple_pod (base => $Bin);
exit;



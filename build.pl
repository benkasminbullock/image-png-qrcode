#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use Perl::Build;
use FindBin '$Bin';
perl_build (
    c => [{
	dir => '/home/ben/projects/qrduino',
	stems => [qw/qrencode qrpng/],
    }],
    make_pod => './make-pod.pl',
    pre => "/home/ben/projects/check4libpng/copy2inc.pl $Bin/inc",
);
exit;

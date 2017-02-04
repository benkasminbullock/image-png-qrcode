#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use Perl::Build;
perl_build (
    c => [{
	dir => '/home/ben/projects/qrduino',
	stems => [qw/qrencode qrpng/],
    }],
    make_pod => './make-pod.pl',
);
exit;

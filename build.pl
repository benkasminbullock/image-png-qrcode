#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use FindBin '$Bin';
use lib "$Bin/copied/lib";
use Perl::Build;
use Sys::Hostname;

my %build = (
    make_pod => './make-pod.pl',
    no_clean => 1,
    c => [{
	dir => '/home/ben/projects/qrduino',
	stems => [qw/qrencode qrpng/],
    }],
    pre => "/home/ben/projects/check4libpng/copy2inc.pl $Bin/inc",
);

if ($ENV{CI}) {
    delete $build{c};
    $build{verbose} = 1;
    $build{no_make_examples} = 1;
}

perl_build (%build);
exit;

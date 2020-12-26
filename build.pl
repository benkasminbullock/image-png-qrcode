#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use FindBin '$Bin';
use lib "$Bin/copied/lib";
use Perl::Build;
use Sys::Hostname;

my $name = hostname ();
my %build = (
    make_pod => './make-pod.pl',
    no_clean => 1,
);
if ($name eq 'mikan') {
    $build{c} = [{
	dir => '/home/ben/projects/qrduino',
	stems => [qw/qrencode qrpng/],
    }];
    $build{pre} = "/home/ben/projects/check4libpng/copy2inc.pl $Bin/inc";
}
perl_build (%build);
exit;

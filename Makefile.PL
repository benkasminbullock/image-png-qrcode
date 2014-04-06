use strict;
use warnings;
use ExtUtils::MakeMaker;

my $pm = 'lib/Image/PNG/QRCode.pm';
my $github = 'github.com/benkasminbullock/image-png-qrcode';
my $repo = "https://$github";

WriteMakefile (
    NAME => 'Image::PNG::QRCode',
    VERSION_FROM => $pm,
    ABSTRACT_FROM => $pm,
    AUTHOR => 'Ben Bullock <bkb@cpan.org>',
    LICENSE => 'perl',
    PREREQ_PM => {
    },
    META_MERGE => {
	'meta-spec' => {
	    version => 2,
	},
        resources => {
            repository => {
		type => 'git',
		url => "git://$github.git",
		web => $repo,
	    },
            bugtracker => {
		web => "$repo/issues",
	    },
#	    homepage => 'http://',
        },
    },
    MIN_PERL_VERSION => '5.006001',
    OBJECT => 'QRCode.o',
);

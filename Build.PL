# @(#)$Ident: DZ_Build.PL 2013-08-15 13:04 pjf ;

use strict;
use warnings;

use Module::Build;

sub whimper { print {*STDOUT} $_[ 0 ]."\n"; exit 0 }

my $perl_ver = 5.010001;
my $name     = 'Data-Validation'; $name =~ s{ - }{::}gmx;

$] >= $perl_ver or $ENV{PERL5_CPANPLUS_IS_VERSION}
   or whimper "Minimum required Perl version is ${perl_ver}";

Module::Build->subclass( code => do { local $/; <DATA> } )->new(
  'module_name' => $name,
  'notes'       => { min_perl_version => $perl_ver },
  'build_requires' => {
    'Class::Null' => '1.09',
    'Module::Build' => '0.4004',
    'Test::Pod' => '1.26',
    'Unexpected' => 'v0.6.0',
    'version' => '0.88'
  },
  'configure_requires' => {
    'Module::Build' => '0.4004',
    'version' => '0.88'
  },
  'recommends' => {
    'Class::Usul' => 'v0.22.0'
  },
  'requires' => {
    'Class::Load' => '0.18',
    'Email::Valid' => '0.184',
    'LWP::UserAgent' => '2.036',
    'Moo' => '1.003000',
    'Regexp::Common' => '2010010201',
    'Try::Tiny' => '0.09',
    'Unexpected' => 'v0.6.0',
    'namespace::sweep' => '0.006',
    'perl' => '5.010001'
  },

)->create_build_script;

exit 0;

__DATA__

sub _normalize_prereqs { # Dynamic config
   my $self = shift; my $p = $self->SUPER::_normalize_prereqs; return $p;
}

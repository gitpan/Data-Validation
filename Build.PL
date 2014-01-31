use strict;
use warnings;

use Module::Build 0.4004;

sub whimper { print {*STDOUT} $_[ 0 ]."\n"; exit 0 }

my $perl_ver = 5.010001;
my $name     = 'Data-Validation'; $name =~ s{ - }{::}gmx;
my $prereqs  = {
  'build_requires' => {
    'Class::Null' => '1.09',
    'Module::Build' => '0.4004',
    'version' => '0.88'
  },
  'configure_requires' => {
    'Module::Build' => '0.4004',
    'version' => '0.88'
  },
  'recommends' => {
    'Class::Usul' => 'v0.38.0'
  },
  'requires' => {
    'Email::Valid' => '0.184',
    'Exporter::Tiny' => '0.026',
    'LWP::UserAgent' => '2.036',
    'Module::Runtime' => '0.013',
    'Moo' => '1.003000',
    'Regexp::Common' => '2010010201',
    'Try::Tiny' => '0.09',
    'Unexpected' => 'v0.22.0',
    'namespace::sweep' => '0.006',
    'perl' => '5.010001'
  },
};

if ($] < $perl_ver) {
   $ENV{AUTOMATED_TESTING}
      or $ENV{PERL_CPAN_REPORTER_CONFIG}
      or $ENV{PERL5_CPANPLUS_IS_VERSION}
      or whimper "Minimum required Perl version is ${perl_ver}";
   $prereqs->{build_requires} = { %{ $prereqs->{configure_requires} } };
   $prereqs->{build_requires}->{ 'Test::Requires' } = 0.06;
   delete $prereqs->{requires};
}

Module::Build->new(
  'module_name' => $name,
  'notes'       => { min_perl_version => $perl_ver },
  %{ $prereqs },

)->create_build_script;

exit 0;

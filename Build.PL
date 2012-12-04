# @(#)$Id: Build.PL 163 2012-11-11 19:02:23Z pjf $

use strict;
use warnings;
use inc::Bob; # Module::Build subclass
use version; our $VERSION = qv( sprintf '0.9.%d', q$Rev: 163 $ =~ /\d+/gmx );

Bob->new( {
   module     => q(Data::Validation),
   home_page  => q(http://www.roxsoft.co.uk),
   requires   => {
      'perl'                 => 5.010,
      'charnames'            => 1.05,
      'namespace::autoclean' => 0.05,
      'version'              => 0.74,
      'Email::Valid'         => 0.179,
      'List::Util'           => 1.19,
      'LWP::UserAgent'       => 2.036,
      'Moose'                => 2.0402,
      'Regexp::Common'       => 2.120,
      'Scalar::Util'         => 1.19,
      'Try::Tiny'            => 0.09, },
   recommends         => { 'Class::Usul::Time' => q(0.1.0), },
   configure_requires => { 'version'           => 0.74,
                           'Module::Build'     => 0.32, },
   build_requires     => { 'Class::Null'       => 1.09,
                           'Exception::Class'  => 1.23,
                           'Test::More'        => 0.74,
                           'Test::Pod'         => 1.26, },
} )->create_build_script; # Goal!

# Local Variables:
# eval: (load-project-state "data-validation")
# mode: perl
# tab-title: Validation
# tab-width: 3
# End:
package Data::Validation::Constraints::Date;

# @(#)$Id: Date.pm 56 2008-09-05 22:37:26Z pjf $

use strict;
use Moose;
use CatalystX::Usul::Time;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 56 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($me, $val) = @_;

   return defined CatalystX::Usul::Class::Time->str2time( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

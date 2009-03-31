package Data::Validation::Constraints::Date;

# @(#)$Id: Date.pm 72 2009-03-24 03:14:23Z pjf $

use strict;
use Moose;
use CatalystX::Usul::Time;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 72 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_;

   return defined CatalystX::Usul::Time->str2time( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

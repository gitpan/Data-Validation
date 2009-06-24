package Data::Validation::Constraints::Date;

# @(#)$Id: Date.pm 92 2009-06-14 02:00:08Z pjf $

use strict;
use Moose;
use CatalystX::Usul::Time;

use version; our $VERSION = qv( sprintf '0.3.%d', q$Rev: 92 $ =~ /\d+/gmx );

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

package Data::Validation::Constraints::Date;

# @(#)$Id: Date.pm 47 2008-08-24 09:43:01Z pjf $

use Moose;
use CatalystX::Usul::Time;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 47 $ =~ /\d+/gmx );

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

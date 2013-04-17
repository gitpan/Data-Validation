# @(#)$Id: Date.pm 179 2013-04-17 19:44:27Z pjf $

package Data::Validation::Constraints::Date;

use strict;
use version; our $VERSION = qv( sprintf '0.10.%d', q$Rev: 179 $ =~ /\d+/gmx );

use Moose;
use CatalystX::Usul::Time qw(str2time);

extends q(Data::Validation::Constraints);

override '_validate' => sub {
   my $self = shift; return defined str2time( $_[ 0 ] ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

# @(#)$Id: Date.pm 153 2012-06-11 17:07:21Z pjf $

package Data::Validation::Constraints::Date;

use strict;
use version; our $VERSION = qv( sprintf '0.8.%d', q$Rev: 153 $ =~ /\d+/gmx );

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

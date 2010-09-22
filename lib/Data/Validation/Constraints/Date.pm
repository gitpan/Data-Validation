# @(#)$Id: Date.pm 120 2010-09-22 01:32:19Z pjf $

package Data::Validation::Constraints::Date;

use strict;
use version; our $VERSION = qv( sprintf '0.5.%d', q$Rev: 120 $ =~ /\d+/gmx );

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

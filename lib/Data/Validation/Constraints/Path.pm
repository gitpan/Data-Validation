package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 160 2012-10-20 14:39:27Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.9.%d', q$Rev: 160 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

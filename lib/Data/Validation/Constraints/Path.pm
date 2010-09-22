package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 123 2010-09-22 19:31:48Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.6.%d', q$Rev: 123 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

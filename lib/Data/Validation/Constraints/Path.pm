package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 179 2013-04-17 19:44:27Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.10.%d', q$Rev: 179 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

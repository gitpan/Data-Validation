package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 107 2009-06-24 18:42:27Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.4.%d', q$Rev: 107 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

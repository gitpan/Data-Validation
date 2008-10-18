package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 57 2008-09-15 18:48:07Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 57 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

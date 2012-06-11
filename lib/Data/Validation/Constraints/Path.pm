package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 153 2012-06-11 17:07:21Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.8.%d', q$Rev: 153 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

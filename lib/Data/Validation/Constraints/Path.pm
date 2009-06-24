package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 92 2009-06-14 02:00:08Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.3.%d', q$Rev: 92 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

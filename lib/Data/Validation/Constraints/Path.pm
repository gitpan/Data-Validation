package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 56 2008-09-05 22:37:26Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 56 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($me, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

package Data::Validation::Constraints::Path;

# @(#)$Id: Path.pm 150 2012-04-19 15:25:56Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.7.%d', q$Rev: 150 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return $val =~ m{ [;&*{} ] }mx ? 0 : 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

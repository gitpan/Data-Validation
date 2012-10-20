package Data::Validation::Constraints::Email;

# @(#)$Id: Email.pm 160 2012-10-20 14:39:27Z pjf $

use strict;
use Moose;
use Email::Valid;

use version; our $VERSION = qv( sprintf '0.9.%d', q$Rev: 160 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return Email::Valid->address( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

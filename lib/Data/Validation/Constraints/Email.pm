package Data::Validation::Constraints::Email;

# @(#)$Id: Email.pm 179 2013-04-17 19:44:27Z pjf $

use strict;
use Moose;
use Email::Valid;

use version; our $VERSION = qv( sprintf '0.10.%d', q$Rev: 179 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return Email::Valid->address( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

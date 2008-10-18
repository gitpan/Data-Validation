package Data::Validation::Constraints::Email;

# @(#)$Id: Email.pm 57 2008-09-15 18:48:07Z pjf $

use strict;
use Moose;
use Email::Valid;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 57 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return Email::Valid->address( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

package Data::Validation::Constraints::Email;

# @(#)$Id: Email.pm 92 2009-06-14 02:00:08Z pjf $

use strict;
use Moose;
use Email::Valid;

use version; our $VERSION = qv( sprintf '0.3.%d', q$Rev: 92 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_; return Email::Valid->address( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

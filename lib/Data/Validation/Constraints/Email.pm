package Data::Validation::Constraints::Email;

# @(#)$Id: Email.pm 47 2008-08-24 09:43:01Z pjf $

use Moose;
use Email::Valid;

use version; our $VERSION = qv( sprintf '0.2.%d', q$Rev: 47 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($me, $val) = @_; return Email::Valid->address( $val ) ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

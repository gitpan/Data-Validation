package Data::Validation::Email;

# @(#)$Id: Email.pm 9 2008-02-10 22:40:42Z pjf $

use strict;
use warnings;
use base qw(Data::Validation);
use Email::Valid;

use version; our $VERSION = qv( sprintf '0.1.%d', q$Rev: 9 $ =~ /\d+/gmx );

sub _validate {
   my ($me, $val) = @_; return Email::Valid->address( $val ) ? 1 : 0;
}

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

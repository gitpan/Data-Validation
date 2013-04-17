package Data::Validation::Constraints::Password;

# @(#)$Id: Password.pm 179 2013-04-17 19:44:27Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.10.%d', q$Rev: 179 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_;

   my $min_length = $self->min_length || 6;
   return 0 if (length $val < $min_length);

   $val =~ tr{A-Z}{a-z}; $val =~ tr{a-z}{}d;
   return 0 unless (length $val > 0);
   return 1;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

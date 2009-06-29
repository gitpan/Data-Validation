package Data::Validation::Constraints::Password;

# @(#)$Id: Password.pm 107 2009-06-24 18:42:27Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.4.%d', q$Rev: 107 $ =~ /\d+/gmx );

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

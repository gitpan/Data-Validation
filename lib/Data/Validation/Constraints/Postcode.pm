package Data::Validation::Constraints::Postcode;

# @(#)$Id: Postcode.pm 179 2013-04-17 19:44:27Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.10.%d', q$Rev: 179 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_;
   my @patterns   = ( 'AN NAA',  'ANN NAA',  'AAN NAA', 'AANN NAA',
                      'ANA NAA', 'AANA NAA', 'AAA NAA', );

   foreach (@patterns) { s{ A }{[A-Z]}gmx; s{ N }{\\d}gmx; s{ [ ] }{\\s+}gmx; }

   my $pattern = join q(|), @patterns;

   return $val =~ m{ \A (?:$pattern) \z }mox ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

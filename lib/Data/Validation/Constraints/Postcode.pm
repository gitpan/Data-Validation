package Data::Validation::Constraints::Postcode;

# @(#)$Id: Postcode.pm 92 2009-06-14 02:00:08Z pjf $

use strict;
use Moose;

use version; our $VERSION = qv( sprintf '0.3.%d', q$Rev: 92 $ =~ /\d+/gmx );

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

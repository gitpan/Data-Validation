package Data::Validation::Postcode;

# @(#)$Id: Postcode.pm 9 2008-02-10 22:40:42Z pjf $

use strict;
use warnings;
use base qw(Data::Validation);

use version; our $VERSION = qv( sprintf '0.1.%d', q$Rev: 9 $ =~ /\d+/gmx );

sub _init {
   my ($me, $args) = @_;
   my @patterns    = ( 'AN NAA',  'ANN NAA',  'AAN NAA', 'AANN NAA',
                       'ANA NAA', 'AANA NAA', 'AAA NAA', );

   foreach (@patterns) { s{ A }{[A-Z]}gmx; s{ N }{\\d}gmx; s{ [ ] }{\\s+}gmx; }

   $me->{pattern}  = join q(|), @patterns;
   return $me;
}

sub _validate {
   my ($me, $val) = @_; my $pat = $me->pattern;

   return $val =~ m{ \A (?:$pat) \z }mox ? 1 : 0;
}

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

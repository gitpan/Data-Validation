package Data::Validation::Path;

# @(#)$Id: Path.pm 9 2008-02-10 22:40:42Z pjf $

use strict;
use warnings;
use base qw(Data::Validation);

use version; our $VERSION = qv( sprintf '0.1.%d', q$Rev: 9 $ =~ /\d+/gmx );

sub _validate {
   my ($me, $val) = @_; my $pat = qr([;&*{} ]); return $val !~ $pat ? 1 : 0;
}

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

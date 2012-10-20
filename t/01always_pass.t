# @(#)$Id: 01always_pass.t 159 2012-10-17 16:11:49Z pjf $

use strict;
use warnings;

use Sys::Hostname; my $host = lc hostname; warn "Hostname: ${host}\n";

print "1..1\n";
print "ok\n";
exit 0;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

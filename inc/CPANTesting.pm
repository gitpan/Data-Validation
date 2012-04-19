# @(#)$Id: CPANTesting.pm 148 2012-04-09 09:46:50Z pjf $

package CPANTesting;

use strict;
use warnings;

my $uname = qx(uname -a);

sub broken_toolchain {
   return 0;
}

sub exceptions {
   lc $^O eq q(cygwin)            and return 'Cygwin not supported';
   lc $^O eq q(mirbsd)            and return 'Mirbsd not supported';
   lc $^O eq q(mswin32)           and return 'Mswin  not supported';
   lc $^O eq q(netbsd)            and return 'Netbsd not supported';
   $uname =~ m{ profvince.com }mx and return 'Stopped vpit';
   return 0;
}

1;

__END__

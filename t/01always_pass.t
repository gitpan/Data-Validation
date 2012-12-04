# @(#)$Id: 01always_pass.t 166 2012-11-13 20:23:01Z pjf $
# Bob-Version: 1.7

use strict;
use warnings;

use Module::Build;
use Sys::Hostname;

my $host    = lc hostname;
my $current = eval { Module::Build->current };
my $notes   = {}; $current and $notes = $current->notes || {};
my $version = defined $notes->{version} ? $notes->{version} : '< 1.6';

$notes->{is_cpan_testing} and warn "Host: ${host}, Bob-Version: ${version}\n";

print "1..1\n";
print "ok\n";
exit 0;

# Local Variables:
# mode: perl
# tab-width: 3
# End:
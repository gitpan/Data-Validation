package Data::Validation::URL;

# @(#)$Id: URL.pm 9 2008-02-10 22:40:42Z pjf $

use strict;
use warnings;
use base qw(Data::Validation);
use LWP::UserAgent;

use version; our $VERSION = qv( sprintf '0.1.%d', q$Rev: 9 $ =~ /\d+/gmx );

sub _validate {
   my ($res, $ua); my ($me, $val) = @_;

   if ($val !~ m{ \A http: }mx) { $val = 'http://localhost'.$val }

   $ua  = LWP::UserAgent->new(); $ua->agent('isValidURL/0.1 '.$ua->agent);
   $res = $ua->request( HTTP::Request->new( GET => $val ) );

   return $res->is_success() ? 1 : 0;
}

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

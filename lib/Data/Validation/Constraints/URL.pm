package Data::Validation::Constraints::URL;

# @(#)$Id: URL.pm 153 2012-06-11 17:07:21Z pjf $

use strict;
use Moose;
use LWP::UserAgent;

use version; our $VERSION = qv( sprintf '0.8.%d', q$Rev: 153 $ =~ /\d+/gmx );

extends 'Data::Validation::Constraints';

override '_validate' => sub {
   my ($self, $val) = @_;

   $val = 'http://localhost'.$val if ($val !~ m{ \A http: }mx);

   my $ua = LWP::UserAgent->new();
   $ua->agent( 'isValidURL/0.1 '.$ua->agent );
   my $res = $ua->request( HTTP::Request->new( GET => $val ) );

   return $res->is_success() ? 1 : 0;
};

1;

# Local Variables:
# mode: perl
# tab-width: 3
# End:

# @(#)$Id: 02pod.t 447 2009-04-12 14:24:08Z pjf $

use strict;
use warnings;
use version; our $VERSION = qv( sprintf '0.9.%d', q$Rev: 108 $ =~ /\d+/gmx );
use File::Spec::Functions;
use FindBin qw( $Bin );
use lib catdir( $Bin, updir, q(lib) );

use English qw( -no_match_vars );
use Test::More;

BEGIN {
   if (!-e catfile( $Bin, updir, q(MANIFEST.SKIP) )) {
      plan skip_all => 'POD test only for developers';
   }
}

eval { use Test::Pod 1.14; };

plan skip_all => 'Test::Pod 1.14 required' if ($EVAL_ERROR);

all_pod_files_ok();

# Local Variables:
# mode: perl
# tab-width: 3
# End:
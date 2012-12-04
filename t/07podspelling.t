# @(#)$Id: 07podspelling.t 155 2012-09-06 00:21:24Z pjf $

use strict;
use warnings;
use version; our $VERSION = qv( sprintf '0.1.%d', q$Rev: 155 $ =~ /\d+/gmx );
use File::Spec::Functions qw(catdir catfile updir);
use FindBin qw( $Bin );
use lib catdir( $Bin, updir, q(lib) );

use English qw(-no_match_vars);
use Test::More;

BEGIN {
   ! -e catfile( $Bin, updir, q(MANIFEST.SKIP) )
      and plan skip_all => 'POD spelling test only for developers';
}

eval "use Test::Spelling";

$EVAL_ERROR and plan skip_all => 'Test::Spelling required but not installed';

$ENV{TEST_SPELLING}
   or plan skip_all => 'Environment variable TEST_SPELLING not set';

my $checker = has_working_spellchecker(); # Aspell is prefered

if ($checker) { warn "Check using ${checker}\n" }
else { plan skip_all => 'No OS spell checkers found' }

add_stopwords( <DATA> );

all_pod_files_spelling_ok();

done_testing();

# Local Variables:
# mode: perl
# tab-width: 3
# End:

__DATA__
flanigan
filterEscapeHTML
filterLowerCase
filterNonNumeric
filterReplaceRegex
filterTrimBoth
filterUpperCase
filterWhiteSpace
filterZeroLength
isBetweenValues
isEqualTo
isMandatory
isMatchingRegex
isPrintable
isSimpleText
isValidHostname
isValidIdentifier
isValidInteger
isValidLength
isValidNumber
rebless
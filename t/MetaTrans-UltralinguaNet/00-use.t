# Pragmas.
use strict;
use warnings;

# Modules.
use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('MetaTrans::UltralinguaNet');
}

# Test.
require_ok('MetaTrans::UltralinguaNet');

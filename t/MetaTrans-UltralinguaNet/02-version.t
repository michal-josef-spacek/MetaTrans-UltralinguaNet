use strict;
use warnings;

use MetaTrans::UltralinguaNet;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($MetaTrans::UltralinguaNet::VERSION, 1.06, 'Version.');

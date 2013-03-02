# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'MetaTrans plugin for ultralingia.net.';
author 'Jan Pomikalek <xpomikal@fi.muni.cz>';
author 'Michal Špaček <skim@cpan.org>';
license 'perl-5';
name 'MetaTrans-UltralinguaNet';
requires 'Encode' => 0;
requires 'HTTP::Request' => 0;
requires 'MetaTrans' => '1.06';
requires 'URI::Escape' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=MetaTrans-UltralinguaNet';
resources 'homepage' => 'https://github.com/tupinek/MetaTrans-UltralinguaNet';
resources 'repository' => 'git://github.com/tupinek/MetaTrans-UltralinguaNet';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '1.06';

# Run.
WriteAll();

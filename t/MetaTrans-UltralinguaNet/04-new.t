# Pragmas.
use strict;
use warnings;

# Modules.
use MetaTrans::UltralinguaNet;
use Test::More 'tests' => 12;
use Test::NoWarnings;

# Test.
my $obj = MetaTrans::UltralinguaNet->new;
isa_ok($obj, 'MetaTrans::UltralinguaNet');

# Test.
my $ret = $obj->host_server;
is($ret, 'ultralingua.net', 'URI of web service.');

# Test.
my @ret = $obj->get_all_src_lang_codes;
is_deeply(
	\@ret,
	[
		'eng',
		'fre',
		'spa',
		'ger',
		'ita',
		'por',
		'lat',
		'epo',
	],
	'Translation languages.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('eng');
is_deeply(
	\@ret,
	['fre', 'spa', 'ger', 'ita', 'por', 'lat', 'epo'],
	'Translation direction eng -> eng, eng -> spa, eng -> get, '.
		'eng -> ita, eng -> por, eng -> lat, eng -> epo.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('fre');
is_deeply(
	\@ret,
	['eng', 'spa', 'ger', 'ita'],
	'Translation direction fre -> eng, fre -> spa, fre -> ger, fre -> ita.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('spa');
is_deeply(
	\@ret,
	['eng', 'fre', 'ger', 'por'],
	'Translation direction spa -> eng, spa -> fre, spa -> ger, spa -> por.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('ger');
is_deeply(
	\@ret,
	['eng', 'fre', 'spa'],
	'Translation direction ger -> eng, ger -> fre, ger -> spa.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('ita');
is_deeply(
	\@ret,
	['eng', 'fre'],
	'Translation direction ita -> eng, ita -> fre.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('por');
is_deeply(
	\@ret,
	['eng', 'spa'],
	'Translation direction por -> eng, por -> spa.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('lat');
is_deeply(
	\@ret,
	['eng'],
	'Translation direction lat -> eng.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('epo');
is_deeply(
	\@ret,
	['eng'],
	'Translation direction epo -> eng.',
);

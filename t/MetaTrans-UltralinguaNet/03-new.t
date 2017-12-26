use strict;
use warnings;

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
		'epo',
		'fre',
		'ger',
		'ita',
		'lat',
		'por',
		'spa',
	],
	'Translation languages.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('eng');
is_deeply(
	\@ret,
	['epo', 'fre', 'ger', 'ita', 'lat', 'por', 'spa'],
	'Translation direction eng -> epo, ger, ita, lat, por, spa.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('fre');
is_deeply(
	\@ret,
	['eng', 'ger', 'ita', 'spa'],
	'Translation direction fre -> eng, ger, ita, spa.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('spa');
is_deeply(
	\@ret,
	['eng', 'fre', 'ger', 'por'],
	'Translation direction spa -> eng, fre, ger, por.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('ger');
is_deeply(
	\@ret,
	['eng', 'fre', 'spa'],
	'Translation direction ger -> eng, fre, spa.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('ita');
is_deeply(
	\@ret,
	['eng', 'fre'],
	'Translation direction ita -> eng, fre.',
);

# Test.
@ret = $obj->get_dest_lang_codes_for_src_lang_code('por');
is_deeply(
	\@ret,
	['eng', 'spa'],
	'Translation direction por -> eng, spa.',
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

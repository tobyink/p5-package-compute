use Test::More;

like
	do {use package::compute -anon; __PACKAGE__ },
	qr{__ANON__},
;
done_testing;

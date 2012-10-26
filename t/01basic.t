use Test::More;
BEGIN { use_ok('package::compute') };

is __RPACKAGE__('..::Baz', 'Foo::Bar'), 'Foo::Baz';
is __RPACKAGE__('...::Baz', 'Foo::Bar::Baz'), 'Foo::Baz';
is __RPACKAGE__('.::Baz', 'Foo'), 'Foo::Baz';

is __RPACKAGE__('..::Quux', 'Foo::Bar::Baz'), 'Foo::Bar::Quux';
is __RPACKAGE__('...::Quux', 'Foo::Bar::Baz'), 'Foo::Quux';
is __RPACKAGE__('....::Quux', 'Foo::Bar::Baz'), 'Quux';
ok not eval { __RPACKAGE__('.....::Quux', 'Foo::Bar::Baz') };

done_testing();

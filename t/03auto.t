use Test::More;
use File::Basename qw(dirname);
use strict;
use warnings;

use lib dirname($0);

use_ok('My::Package');

no warnings 'once';
is($My::Package::Foo, 'Done.', "Can read variable");
is($My::Package::Funky::Monkey, 'Done.', "Can read variable");

done_testing();

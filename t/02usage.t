use Test::More;

package Foo::Bar;  # this is a hard-coded package name
use 5.010;

{
	use package::compute "../Quux";
	::is(__PACKAGE__, "Foo::Quux");
	::is(__RPACKAGE__("./Xyzzy"), "Foo::Quux::Xyzzy");
	
	sub hello { ::is(__PACKAGE__, "Foo::Quux") };
}

say ::is(__PACKAGE__, "Foo::Bar");
Foo::Quux->hello;

::done_testing();
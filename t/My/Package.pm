use package::compute -filename;

our $Foo = "Done.";

{
	use package::compute '.::Funky';
	our $Monkey = "Done.";
}

1;

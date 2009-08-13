#!perl -T

use Test::More tests => 1;

BEGIN {
  use_ok( 'PackageMangler' );
}

diag( "Testing PackageMangler $PackageMangler::VERSION, Perl $], $^X" );

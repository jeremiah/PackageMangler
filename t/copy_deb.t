#!perl 

use strict;
use warnings;
use Test::More tests => 5;
use Cwd;
use PackageMangler;

BEGIN {
  use_ok('PackageMangler');
  use_ok('File::Copy');
}
my $path = getcwd();
# Since the destination is required, you need to declare it here.
my $repo = PackageMangler->new();
isa_ok($repo, "PackageMangler");

# This is hard coded just for testing
my $file = "testdata/libmodule-starter-pbp-perl_0.0.3-1_all.deb";
my $comp = "$path/";
$comp .= $file;
ok(-e $comp, 'File exists');
$repo->copy_file($comp, "/home/jeremiah/");
ok(-e "/home/jeremiah/libmodule-starter-pbp-perl_0.0.3-1_all.deb", 'File copied');

# Interactive test. Turned off by default.
# if (not $ARGV[0]) {
#   print "Please pass command line args.\n";
# }
# else {
#   ok(-e $ARGV[0], "$ARGV[0] exists");
# }
# if (not $ARGV[1]) {
#   print "Please pass command line args.\n";
# }
# else {
#   ok(-d $ARGV[1], "$ARGV[1] is a dir");
# }

# $repo->copy_file($ARGV[0], $ARGV[1]);

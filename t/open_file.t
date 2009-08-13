#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 2;
use Cwd;
use PackageMangler::File;

BEGIN {
  use_ok('PackageMangler');
}

my $repo = PackageMangler->new();
isa_ok($repo, "PackageMangler");

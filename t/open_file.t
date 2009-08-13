#!/usr/bin/perl

use warnings;
use strict;
use PackageMangler::Pkgs;
use Test::More tests => 1;

BEGIN {
  use_ok('PackageMangler::Pkgs');
}

my $packs = Pkgs->new();

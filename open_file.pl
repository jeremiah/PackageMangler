#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 7;
use Cwd;
use PackageMangler::File;

BEGIN {
  use_ok('PackageMangler::File');
}

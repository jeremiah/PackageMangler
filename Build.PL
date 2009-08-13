use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'PackageMangler',
    license             => 'GPL',
    dist_author         => 'Jeremiah C. Foster <jeremiah@jeremiahfoster.com>',
    dist_version_from   => 'lib/PackageMangler.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'PackageMangler-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();

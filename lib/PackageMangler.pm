package PackageMangler;

=head1 NAME

PackageMangler - A library for moving binary debian packages 
around a file system and repository.

=head1 VERSION

Version 0.02

=cut

our $VERSION = '0.02';

=head1 SYNOPSIS

    use PackageMangler;

    # Initialize our object
    my $repo = PackageMangler->new();

    # Copy file to target
    $repo->copy_file("$dir/$file", "/dir/");

=head1 FUNCTIONS

=head2 copy_file

Copy a file from one location to another.

=cut

use Moose;

has 'name' => (isa => 'Str', is => 'rw');
has 'destination' => (isa => 'Str', is => 'rw');

sub copy_file {
  use File::Copy;
  my ($self, $file, $to_dir) = @_;

  # Do some file checking
  chomp($file);
  if (-e $file) {
    $self->name($file);
  }
  else {
    die "$file does not exist.\n";
  }

  if (-d $to_dir) {
    $self->destination($to_dir);
  }
  else {
    die "Is $to_dir a directory?\n";
  }
  copy($self->name, $self->destination)
    or warn "Cannot move file " . $self->name . " to " . $self->destination .": $!\n";
  return $self->destination;
}

no Moose;

__PACKAGE__->meta->make_immutable;

=head1 AUTHOR

Jeremiah C. Foster, C<< <jeremiah at jeremiahfoster.com> >>

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc PackageMangler

=head1 COPYRIGHT & LICENSE

Copyright 2009 Jeremiah C. Foster, all rights reserved.

This program is released under the following license: GPL

=cut

1; # End of PackageMangler

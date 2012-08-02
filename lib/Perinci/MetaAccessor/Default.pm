package Perinci::MetaAccessor::Default;

use 5.010;
use Moo;
with 'Perinci::Role::MetaAccessor';

our $VERSION = '0.26'; # VERSION

# static method
sub get_meta {
    my ($class, $package, $leaf) = @_;
    my $key = $leaf || ':package';
    no strict 'refs';
    ${ $package . "::SPEC" }{$key};
}

sub get_all_metas {
    my ($class, $package) = @_;
    no strict 'refs';
    \%{ $package . "::SPEC" };
}

sub set_meta {
    my ($class, $package, $leaf, $meta) = @_;
    no strict 'refs';
    my $key = $leaf || ':package';
    ${ $package . "::SPEC" }{$key} = $meta;
}

1;
# ABSTRACT: Default class to access metadata in local package

__END__
=pod

=head1 NAME

Perinci::MetaAccessor::Default - Default class to access metadata in local package

=head1 VERSION

version 0.26

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


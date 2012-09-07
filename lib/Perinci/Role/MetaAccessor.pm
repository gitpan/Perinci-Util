package Perinci::Role::MetaAccessor;

use 5.010;
use Moo::Role;

our $VERSION = '0.27'; # VERSION

requires 'get_meta';
requires 'get_all_metas';
requires 'set_meta';

1;
# ABSTRACT: Role for metadata accessor class

__END__
=pod

=head1 NAME

Perinci::Role::MetaAccessor - Role for metadata accessor class

=head1 VERSION

version 0.27

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


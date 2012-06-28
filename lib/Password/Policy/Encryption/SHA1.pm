package Password::Policy::Encryption::SHA1;

# ABSTRACT: The SHA-1 algorithm for Password::Policy

use strict;
use warnings;

use parent 'Password::Policy::Encryption';

use Digest::SHA1 qw/sha1_hex/;

sub enc {
    my $self = shift;
    my $password = $self->prepare(shift);
    return sha1_hex($password);
}

1;

__END__

package DNS::Oterica::Location;
use Moose;

use Net::IP;
use Moose::Util::TypeConstraints;

# subtype 'DNS::Oterica::Type::Network'
#   => as Object
#   => where { $_->isa('Net::IP') };
# 
# coerce 'DNS::Oterica::Type::Network'
#   => from 'Str'
#   => via { Net::IP->new($_) };
# 
# has 'network' => (
#   is   => 'ro',
#   isa  => 'DNS::Oterica::Type::Network',
#   required => 1,
#   coerce   => 1,
# );

has name => (is => 'ro', isa => 'Str', required => 1);
has code => (is => 'ro', isa => 'Str', required => 1);

__PACKAGE__->meta->make_immutable;
no Moose;
1;

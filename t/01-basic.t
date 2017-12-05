use v6.c;
use Test;
use Test::Output;

plan 5;

use Acme::Inkling;

my $target = 123;
my $assigned = 123456789;

$target <=:= $assigned;
is $target, '*********', 'squid operator(ascii) work well.';

$target くコ:彡 $assigned;
is $target, '■■■■■■■■■', 'squid operator(multibyte) work well.';

$target 🦑 $assigned;
is $target, '*********', 'squid operator(emoji) work well.';

output-is { say('any value') }, "Gung-we-wy!\n", 'say Inkling language work well.';

output-is { die }, "Uwaaaw!\n", 'die as Inkling work well.';

done-testing;

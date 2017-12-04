use v6.c;
unit module Acme::Inkling:ver<0.0.1>;

multi infix:«<=:=»($target is rw, $value) is export {
  $target = '*' x ~$value.chars;
}

multi infix:<くコ:彡>($target is rw, $value) is export {
  $target = '■' x ~$value.chars;
}

multi infix:<🦑>($target is rw, $value) is export {
  $target = '*' x ~$value.chars;
}

sub say($value) is export {
  print("Gung-we-wy!\n");
}

sub die() is export {
  print("Uwaaaw!\n");
}

=begin pod

=head1 NAME

Acme::Inkling - Inkling eat away your project

=head1 SYNOPSIS

  use Acme::Inkling;

  my $var1 = 123;
  my $var2 = 123456789;
  
  $var1 <=:= $var2;
  print "$var1\n";

  # for Japanese
  $var1 くコ:彡 $var2;
  print "$var1\n";

  # for Emoji believer
  $var1 🦑 $var2;
  print "$var1\n";

  # say only Inkling language
  say $var2;

  # die Inkling
  die;

=head1 DESCRIPTION

Acme::Inkling is a Perl 6 module that allows Inkling to eat away source code.

'<=:=' (squid ascii art) is assignment operator.
But assigned value is inked.
'くコ:彡' and '🦑' have same meaning.

When you load this modules, This project is eaten away by Inkling.
So you can 'say' only Inkling language, and you can only 'die' as Inkling.

This project is just a joke.
'Inkling' and 'Splatoon' are copyrighted by Nintendo Co., Ltd.

=head1 AUTHOR

debility <h.satoshi@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 debility

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

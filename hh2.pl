#!/usr/bin/perl
 
use strict;
use warnings;
use Math::BigInt;
# will warn if Math::BigInt::GMP cannot be found
use Math::BigInt lib => 'GMP';

# Сумма ряда 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317, десять последних цифр: 0405071317.

# Найдите 10 последних цифр в конечной сумме ряда 1**1 + 2**2 + 3**3 + ... + 1493**1493. 

my $t = Math::BigInt->new("0");
my $module = Math::BigInt->new("10000000000");	

for (my $i = 1; $i < 1494; $i++) {
	my $x = Math::BigInt->new("$i");
	my $y = Math::BigInt->new("$i");
	my $xpowy = $x->bpow($y);
	$t = $xpowy->badd($t);
}

printf ("\t\nLast 10 nums: %s\n", $t->bmod($module));


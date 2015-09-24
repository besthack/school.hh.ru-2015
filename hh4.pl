#!/usr/bin/perl
 
use strict;
use warnings;
use Math::BigInt;
use Data::Dumper;

# #Задача 4
# Число 125874 и результат умножения его на 2 — 251748 можно получить друг из друга перестановкой цифр.

# Найдите наименьшее положительное натуральное x такое, что числа 3*x, 5*x можно получить друг из друга перестановкой цифр. 

my $i = 0;
my $flag =0;
while (!$flag) {
	$i++;
	my $a = 3 * $i;
	my $b = 5 * $i; 
	my @aa = sort (split //, "$a");
	my @bb = sort (split //, "$b");
	my $size_aa = scalar @aa;
	my $size_bb = scalar @bb;

	my $flag2 = 0;
	if ( $size_aa == $size_bb)
	{
		for (my $j = 0; $j < $size_aa; $j++) 
		{
			# next if $flag2;
			if ($aa[$j] != $bb[$j])
			{
				$flag2 =1;
				last;
			}
			else
			{
				if ($j == ( $size_aa -1 ) && ($aa[$j] == $bb[$j]))
				{
					print "\t\nfinish: num = $i\na = $a, b = $b \n";
					$flag = 1;
					last;
				}
			}
		}
	}
}

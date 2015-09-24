#!/usr/bin/perl
 
use strict;
use warnings;
use Math::BigInt;
use Data::Dumper;

# Если мы возьмем 47, перевернем его и сложим, получится число 121 — палиндром.

# Если взять 349 и проделать над ним эту операцию три раза, то тоже получится палиндром:
# 349 + 943 = 1292
# 1292 + 2921 = 4213
# 4213 + 3124 = 7337

# Найдите количество положительных натуральных чисел меньших 12777 таких, что из них нельзя получить палиндром за 50 или менее применений описанной операции. 

use bigint;
my $number = 0;
my $vars =0;
my $flag = 0;

my @not_pal;

while (!$flag) {
	$number++;
	my $local_number = $number;
	for (my $j = 0; $j < 51; $j++) {
		
		if (is_palindrome($number))
		{
			print "$number; $local_number, $vars,  $j\n";
			$vars++; last;
		}
		else
		{
			$number = $number + int (reverse ("$number"));
		}

		# if ( $j == 50 && !is_palindrome($number))
		# {
		# 	push @not_pal, $local_number;

		# }
	}
	$number = $local_number;
	last if ($number == 12777);
}
printf ("variants: %s", 12777 - $vars);
# print join "\nnum = ", @not_pal;

sub is_palindrome
{

	chomp( my $str = shift @_ );

	if ( $str eq reverse($str) )
	{
		return 1;
	}
	else
	{
		return 0;
	}
}





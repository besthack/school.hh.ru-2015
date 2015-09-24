#!/usr/bin/perl
 
use strict;
use warnings;
use Math::BigInt;
use Data::Dumper;
#наименьшее положительное натуральное x такое, что числа 3*x, 5*x можно получить друг из друга перестановкой цифр. 
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





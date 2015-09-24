#!/usr/bin/perl

use strict;
use warnings;
use Math::BigInt;
use bigint;
# Задача 1
# Рассмотрим спираль, в которой, начиная с 1 в центре, последовательно расставим числа по часовой стрелке,
# пока не получится спираль 5 на 5

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# Можно проверить, что сумма всех чисел на диагоналях равна 101.

# Чему будет равна сумма чисел на диагоналях, для спирали размером 1013 на 1013? 
my @data  = ( 1 .. 1013**2 );
my $sum   = $data[0];
my $link  = 0;
my $start = 8;
my $step  = 2;


while ( !($start > $#data ) )
{
	$sum += $data[ $link + 1 * $step ] + $data[ $link + 2 * $step ] + $data[ $link + 3 * $step ] + $data[ $link + 4 * $step ];
	# print $sum;
	$step += 2;
	$link = $start;
	$start += 4 * $step;

}

printf ("sum of diagonal elements = %s",$sum);
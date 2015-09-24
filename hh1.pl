#!/usr/bin/perl

use strict;
use warnings;
use Math::BigInt;
use bigint;

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
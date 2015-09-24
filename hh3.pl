#!/usr/bin/perl
 
use strict;
use warnings;

# rqr + rvsv = rwsw 
# 909 + 9090 = 9999

my $variants = 0;
for (my $r = 0; $r < 10; $r++) {
	for (my $q = 0; $q < 10; $q++) {
		for (my $v = 0; $v < 10; $v++) {
			for (my $s = 0; $s < 10; $s++) {
				for (my $w = 0; $w < 10; $w++) {
					if ( int ("$r$q$r") + int ("$r$v$s$v") == int ("$r$w$s$w"))
					{
						print "(r=$r, q=$q, v=$v, s=$s, w=$w)\n";
						$variants++;
					}
				}
			}
		}
	}
}

print "\t\nVars: $variants\n";

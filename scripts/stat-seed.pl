#!/usr/local/bin/perl

use strict;
use warnings;
use IPC::Open2 qw/open2/;

my %conv = ('seed.clean.nhx'=>'CUR',
	'merged.nhx'=>'MERGED',
	'fastme.aa.nh'=>'ME-AA-WAG4',
	'fastme.nt.nh'=>'ME-NT-HKY4',
	'tree.nj-dn.nhx'=>'NJ-NT-dN',
	'tree.nj-ds.nhx'=>'NJ-NT-dS',
	'tree.phyml-aa.nhx'=>'ML-AA-WAG4',
	'tree.phyml-nt.nhx'=>'ML-NT-HKY4',
	'dnapars.combined.nhx'=>'PARS-NT',
	'protpars.combined.nhx'=>'PARS-AA',
	'nj-dm.nt.nhx'=>'NJ-NT-dM',
	'nj-kimura.aa.nhx'=>'NJ-AA-Kmr',
	'nj-ml.aa.nhx'=>'NJ-AA-WAG4',
	'nj-ml.nt.nhx'=>'NJ-NT-HKY4',
	'nj-mm.aa.nhx'=>'NJ-AA-MM',
	'phyml-1.nt.nhx'=>'ML-NT-HKY1',
	'phyml-2.nt.nhx'=>'ML-NT-HKY2');

my (@array, @n, @count, %tmph);
@n = (-1, -1);
while (<>) {
	my @t = split;
	my $i = $t[1]%2;
	unless ($tmph{$t[0]}) {
		++$n[$i];
		$tmph{$t[0]} = 1;
	}
	$t[3] = $conv{$t[3]};
	$t[4] = $conv{$t[4]};
	$count[$i][$n[$i]] = 2 * ($t[2] - 3);
	if ($t[3] eq 'CUR') {
		$array[$i][$n[$i]]{$t[4]} = $t[5];
	} elsif ($t[4] eq 'CUR') {
		$array[$i][$n[$i]]{$t[3]} = $t[5];
	}
}

for my $i (0..1) {
	my (%ori_dist, %mean, %var);
	{
		my ($base, %dist);
		$base = 0;
		for (my $j = 0; $j < $n[$i]; ++$j) {
			$base += $count[$i][$j];
			my $p = $array[$i][$j];
			foreach my $tree (keys %$p) {
				$dist{$tree} += $p->{$tree};
			}
		}
		foreach my $tree (sort keys %dist) {
			$ori_dist{$tree} = $dist{$tree}/$base;
		}
	}
	for (my $b = 0; $b < 1000; ++$b) {
		my ($base, %dist);
		$base = 0;
		for (my $j = 0; $j < $n[$i]; ++$j) {
			my $k = int(rand($n[$i]));
			$base += $count[$i][$k];
			my $p = $array[$i][$k];
			foreach my $tree (keys %$p) {
				$dist{$tree} += $p->{$tree};
			}
		}
		foreach my $tree (sort keys %dist) {
			my $tmp = $dist{$tree}/$base;
			$mean{$tree} += $tmp;
			$var{$tree} += $tmp * $tmp;
		}
	}
	foreach my $tree (sort keys %mean) {
		$mean{$tree} /= 1000;
		$var{$tree} = sqrt(($var{$tree} - 1000 * $mean{$tree}*$mean{$tree})/999);
		printf("%-11s\t%.3f\t%.3f\t%.3f\n", $tree, $ori_dist{$tree}, $mean{$tree}, $var{$tree});
	}
}

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
	$array[$i][$n[$i]]{$t[3]}{$t[4]} = $t[5];
	$array[$i][$n[$i]]{$t[4]}{$t[3]} = $t[5];
}

for my $i (1..1) {
	{
		my ($base, %dist);
		$base = 0;
		print STDERR scalar(keys %{$array[$i][0]}), "\n";
		for (my $j = 0; $j < $n[$i]; ++$j) {
			$base += $count[$i][$j];
			my $p = $array[$i][$j];
			foreach my $tree1 (keys %$p) {
				foreach my $tree2 (keys %{$p->{$tree1}}) {
					$dist{$tree1}{$tree2} += $p->{$tree1}{$tree2};
				}
			}
		}
		foreach my $tree1 (sort keys %dist) {
			printf STDERR ("%-10s", $tree1);
			foreach my $tree2 (sort keys %{$dist{$tree1}}) {
				print STDERR " ", $dist{$tree1}{$tree2}/$base;
			}
			print STDERR "\n";
		}
	}
	for (my $b = 0; $b < 100; ++$b) {
		my ($base, %dist);
		$base = 0;
		for (my $j = 0; $j < $n[$i]; ++$j) {
			my $k = int(rand($n[$i]));
			$base += $count[$i][$k];
			my $p = $array[$i][$k];
			foreach my $tree1 (keys %$p) {
				foreach my $tree2 (keys %{$p->{$tree1}}) {
					$dist{$tree1}{$tree2} += $p->{$tree1}{$tree2};
				}
			}
		}
		my ($fhr, $fhw);
		open2($fhr, $fhw, "njtree nj -");
		print $fhw scalar(keys %{$array[$i][0]}), "\n";
		foreach my $tree1 (sort keys %dist) {
			print $fhw $tree1;
			foreach my $tree2 (sort keys %{$dist{$tree1}}) {
				print $fhw "\t", $dist{$tree1}{$tree2};
			}
			print $fhw "\n";
		}
		close($fhw);
		my $str = '';
		$str .= $_ while (<$fhr>);
		close($fhr);
		$str =~ s/\s//g;
		$str =~ s/\[[^\[\]]*\]//g;
		print "$str\n";
	}
}

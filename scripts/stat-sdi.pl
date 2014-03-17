#!/usr/local/bin/perl -w

use strict;
use warnings;

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

my $B = 1000;
my (%array, @n, %tmp_hash);
@n = (-1, -1);
while (<>) {
	my @t = split;
	my $i = $t[2]%2;
	unless ($tmp_hash{$t[0]}) {
		++$n[$i];
		$tmp_hash{$t[0]} = 1;
	}
	$t[1] = $conv{$t[1]};
	$array{$t[1]}[$i][$n[$i]]{N} = $t[3];
	$array{$t[1]}[$i][$n[$i]]{D} = $t[4];
	$array{$t[1]}[$i][$n[$i]]{L} = $t[5];
}
printf("%-30s", 'type');
print "\tobs_d\tmean_d\tsd_d\tobs_l\tmean_l\tsd_l";
print "\tobs_d\tmean_d\tsd_d\tobs_l\tmean_l\tsd_l\n";
foreach my $tree (sort keys %array) {
	printf("%-11s", $tree);
	for my $i (0..1) {
		my $p = $array{$tree}[$i];
		my ($md, $ml, $vd, $vl) = (0, 0, 0, 0);
		my ($nn, $nd, $nl) = (0, 0, 0);
		for (my $j = 0; $j < $n[$i]; ++$j) {
			my $q = $p->[$j];
			$nn += $q->{N};
			$nd += $q->{D};
			$nl += $q->{L};
		}
		my ($cd, $cl) = ($nd/$nn, $nl/$nn);
		for (my $b = 0; $b < $B; ++$b) {
			($nn, $nd, $nl) = (0, 0, 0);
			for (my $j = 0; $j < $n[$i]; ++$j) {
				my $q = $p->[int(rand($n[$i]))];
				$nn += $q->{N};
				$nd += $q->{D};
				$nl += $q->{L};
			}
			my $tmp = $nd/$nn;
			$md += $tmp; $vd += $tmp * $tmp;
			$tmp = $nl/$nn;
			$ml += $tmp; $vl += $tmp * $tmp;
		}
		$md /= $B; $vd = sqrt(($vd-$B*$md*$md)/($B-1));
		$ml /= $B; $vl = sqrt(($vl-$B*$ml*$ml)/($B-1));
#		printf("\t%.4f\t%.4f\t%.4f\t%.4f\t%.4f\t%.4f", $cd, $md, $vd, $cl, $ml, $vl);
		printf("\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f", $cd, $md, $vd, $cl, $ml, $vl);
	}
	print "\n";
}

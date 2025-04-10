#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw(sum);

# Example array of numbers
my @numbers = (10, 20, 30, 40, 50);
my $n = scalar @numbers;

# Mean calculation
my $mean = sum(@numbers) / $n;

# Variance calculation
my $variance = 0;
$variance += ($_ - $mean) ** 2 for @numbers;
$variance /= $n;

# Standard Deviation
my $std_dev = sqrt($variance);

print "Mean: $mean\n";
print "Variance: $variance\n";
print "Standard Deviation: $std_dev\n";

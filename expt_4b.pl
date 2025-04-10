#!/usr/bin/perl
use strict;
use warnings;

# Sample array
my @array = (15, 22, 8, 19, 31, 5);

sub find_max {
    my @arr = @_;
    my $max = $arr[0];
    foreach my $item (@arr) {
        $max = $item if $item > $max;
    }
    return $max;
}

sub find_min {
    my @arr = @_;
    my $min = $arr[0];
    foreach my $item (@arr) {
        $min = $item if $item < $min;
    }
    return $min;
}

print "Maximum value: ", find_max(@array), "\n";
print "Minimum value: ", find_min(@array), "\n";

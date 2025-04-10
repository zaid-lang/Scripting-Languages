#!/usr/bin/perl
use strict;
use warnings;

print "Enter mobile number (XXX-XXX-XXXX): ";
chomp(my $number = <STDIN>);

if ($number =~ /^\d{3}-\d{3}-\d{4}$/) {
    print "Valid number\n";
} else {
    print "Invalid number\n";
}

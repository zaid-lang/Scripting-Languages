#!/usr/bin/perl
use strict;
use warnings;

print "Enter a date (YYYY-MM-DD): ";
chomp(my $date = <STDIN>);

if ($date =~ /^(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$/) {
    print "Valid date\n";
} else {
    print "Invalid date\n";
}

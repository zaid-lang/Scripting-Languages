#!/usr/bin/perl
use strict;
use warnings;

print "Enter password: ";
chomp(my $password = <STDIN>);

if (length($password) >= 8 &&
    $password =~ /[A-Z]/ &&
    $password =~ /[a-z]/ &&
    $password =~ /\d/) {
    print "Strong password\n";
} else {
    print "Weak password\n";
}

#!/usr/bin/perl
use strict;
use warnings;

my $text = q{
Contact: John Doe, Phone: 123-456-7890, Email: john.doe@example.com
DOB: 1990-05-15, Special Chars: !@#$%^&*()
Another contact: Jane Smith, Phone: 987-654-3210, Email: jane.smith@mail.com
DOB: 1988-12-03, Special: &*()_+
};

# Extract phone numbers (format: XXX-XXX-XXXX)
my @phones = $text =~ /(\d{3}-\d{3}-\d{4})/g;
print "Phone Numbers: @phones\n";

# Extract dates in YYYY-MM-DD format
my @dates = $text =~ /(\d{4}-\d{2}-\d{2})/g;
print "Dates of Birth: @dates\n";

# Extract special characters (assuming a group of specific characters)
my @specials = $text =~ /([!@#\$%\^&\*\(\)_\+]+)/g;
print "Special Characters: @specials\n";

# Extract email addresses
my @emails = $text =~ /([\w\.\-]+@[\w\-]+\.[\w\.\-]+)/g;
print "Email IDs: @emails\n";

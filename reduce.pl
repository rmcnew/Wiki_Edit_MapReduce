#!/usr/bin/perl
use strict;
use warnings;

my $current_key = undef;
my $current_value = 0;

while (<STDIN>) {
    next unless /(\w+)\s(\d+)/;
    my $key = $1;
    my $value = $2;
    if ($key eq $current_key) {
        $current_value += $value;
    } else {
        print "$current_key\t$current_value\n" if defined $current_key;
        $current_key = $key;
        $current_value = $value;
    }
}


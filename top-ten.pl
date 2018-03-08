#!/usr/bin/perl
use strict;
use warnings;

sub min ($$) { $_[$_[0] > $_[1]] }

my %counts;

while (<STDIN>) {
    next unless /(\w+)\s(\d+)/;
    my $key = $1;
    my $value = $2;
    $counts{$key} = $value;
}

my @keys = (reverse sort {$counts{$a} <=> $counts{$b}} keys (%counts)); 

my $max_index = min($#keys, 9);
for my $index (0 .. $max_index) {
    print "$keys[$index]\t$counts{$keys[$index]}\n";
}

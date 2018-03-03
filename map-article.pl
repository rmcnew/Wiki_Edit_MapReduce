#!/usr/bin/perl
use strict;
use warnings;

while (<STDIN>) {
    next unless /(\d+) (\d+) (\d+) (\d+)/;
    my $user = $1;
    my $article = $2;
    my $edit = $3;
    my $timestamp = $4;
    print "$article\t1\n";
}

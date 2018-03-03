#!/usr/bin/perl
use strict;
use warnings;

my %weekdays = (0=>"Sunday", 
                1=>"Monday",
                2=>"Tuesday",
                3=>"Wednesday",
                4=>"Thursday",
                5=>"Friday",
                6=>"Saturday");

while (<STDIN>) {
    next unless /(\d+) (\d+) (\d+) (\d+)/;
    my $user = $1;
    my $article = $2;
    my $edit = $3;
    my $timestamp = $4;
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime($timestamp);
    print "$weekdays{$wday}\t1\n";
}

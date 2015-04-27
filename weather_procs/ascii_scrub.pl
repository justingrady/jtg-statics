#!/usr/bin/perl -w

use strict;

sub main {
        while(<STDIN>) {
                my $orig = $_;
                $_ =~ s/[^\x20-\x7e\n\r\t]//g;
                if($_ ne $orig) {
                        print STDERR $orig;
                        print STDERR "-----------------\n";
                        print STDERR $_;
                        print STDERR "\n";
                }
                print $_;
        }
}

main();
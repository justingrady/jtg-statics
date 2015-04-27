#!/usr/bin/perl -w

#use lib '/usr/local/weather/scrapers/lib';
use lib '/var/www/weather_procs/scrapers/lib';
use FetchURL;

use strict;

sub main {
        my $config = {};
        my $fetch_url = new FetchURL();
        $config->{fetch_url} = $fetch_url;

        $fetch_url->src_url('http://timberlinelodge.com/ski_ride/conditions.php');
        $fetch_url->update();

        my ($snowfall, $base) = proc($config);

        write_snowfall($config, $snowfall, $base);
}

sub write_snowfall {
        my $config = shift;
        my $snowfall = shift;
        my $base = shift;

        if(!defined $snowfall || !length $snowfall) {
                $snowfall = "*";
        }

        if(!defined $base || !length $base) {
                $base = "*";
        }

        print qq{<timberline snowfall="$snowfall" base="$base"/>};
}

sub proc {
        my $config = shift;
        my $html = $config->{fetch_url}->{content};
        $html =~ s/\r//g;
        $html =~ s/\n//g;
        $html =~ s/\s//g;
        $html =~ s/<(.*?)>//g;
        my $snowfall = $html;
        my $base = $html;
        #NewSnow:14"
        #$snowfall = 13;
        $snowfall =~ s/.*reportedonceperdayat6am.([0-9"]*)BaseDepthatLodge.*/$1/;
        #$snowfall =~ s/.*NewSnow([0-9"]*)BaseDepthatLodgei.*/$1/;
        $snowfall =~ s/[^0-9.]//g;
        #$base =~ s/.*BaseDepthatLodge([0-9.]*)".*/$1/;
        $base =~ s/.*BaseDepthatLodge([0-9"]*)TotalSnowfallToDate.*/$1/;
        $base =~ s/[^0-9]//g;
        return ($snowfall, $base);
}

main();
#!/usr/bin/perl -w

#use lib '/usr/local/weather/scrapers/lib';
use lib '/var/www/weather_procs/scrapers/lib';
use FetchURL;

use strict;

sub main {
        my $config = {};
        my $fetch_url = new FetchURL();
        $config->{fetch_url} = $fetch_url;

        $fetch_url->src_url('http://skihood.com/Mountain/Conditions/Default.aspx');
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

        print qq{<meadows snowfall="$snowfall" base="$base"/>};
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
        #NEWSNOWINLAST24HRS14"
        $snowfall =~ s/.*NEWSNOWINLAST24HRS([0-9.]*)".*/$1/;
        $snowfall =~ s/[^0-9.]//g;
        $base =~ s/.*SNOWSETTLEDATBASE([0-9.]*)Feet.*/$1/;
        $base =~ s/[^0-9.]//g;
        if(defined $base && length $base) {
                $base *= 12;
        }
        return ($snowfall, $base);
}

main();
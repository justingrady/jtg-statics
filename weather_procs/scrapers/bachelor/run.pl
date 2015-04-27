#!/usr/bin/perl -w

#use lib '/usr/local/weather/scrapers/lib';
use lib '/var/www/weather_procs/scrapers/lib';
use FetchURL;

use strict;

sub main {
        my $config = {};
        my $fetch_url = new FetchURL();
        $config->{fetch_url} = $fetch_url;

        ## $fetch_url->src_url('http://www.mtbachelor.com/winter/services/dor');
        $fetch_url->src_url('http://www.mtbachelor.com/winter/services/snow_report/');
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

        print qq{<SKIDATA RESORTCODE="503004" NEWSNOWMAX="$snowfall" BASEDEPTHMAX="$base"/>};
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
        # Today'sSnowfall(5AM-3PM)11&quot;
        ## $snowfall =~ s/.*Today'sSnowfall\(5AM-3PM\)([0-9.]*)&quot;.*/$1/;
        $snowfall =~ s/.*24HourSnowfall([0-9.]*)&quot;.*/$1/;
        $snowfall =~ s/[^0-9.]//g;
        # WestVillageDepth(6300')55.5&quot;
        $base =~ s/.*WestVillageDepth\(6300'\)([0-9.]*)&quot;.*/$1/;
        $base =~ s/[^0-9.]//g;
        return ($snowfall, $base);
}

main();
#!/usr/bin/perl -w
#print "Content-type: text/html\n\n";
use XML::EasySQL::XMLobj;
use HTML::Template;
use CGI;
use strict;

sub main {
        my $config = {};
        $config->{xml}->{current} = '/var/www/weather_procs/xml/current.xml';
        $config->{xml}->{forecast} = '/var/www/weather_procs/xml/forecast.xml';
        $config->{xml}->{forecast_text} = '/var/www/weather_procs/xml/forecast_text.xml';
        $config->{xml}->{ski} = '/var/www/weather_procs/ski.xml';
        $config->{icon_lookup_weather} = '/var/www/weather_procs/icon_map_weather.txt';
        $config->{icon_lookup_sky} = '/var/www/weather_procs/icon_map_sky.txt';


        my $q = CGI->new();
        $config->{q} = $q;

        print $q->header(-type=>'text/html');

        if($q->param('report') eq 'current_conditions') {
                current_conditions($config);
        } elsif($q->param('report') eq 'current_conditions_masthead') {
                current_conditions_masthead($config);
        } elsif($q->param('report') eq 'current_conditions_mini') {
                current_conditions_mini($config);
        } elsif($q->param('report') eq 'forecast') {
                forecast($config);
        } elsif($q->param('report') eq 'forecast_mini') {
                forecast_mini($config);

        #output of one sentence description of weather forecast only
        } elsif($q->param('report') eq 'forecast_desconly') {
                forecast_desconly($config);

        } elsif($q->param('report') eq 'current_mini_json') {
                current_mini_json($config);
        } elsif($q->param('report') eq 'weather_icon') {
                weather_icon($config);
        } elsif($q->param('report') eq 'weather_icon_large') {
                weather_icon_large($config);
        } elsif($q->param('report') eq 'weather_degrees') {
                weather_degrees($config);
        }

}

sub build_location_lookup_table {
        my $config = shift;
        my $locations = {};
        $locations->{USOR} = "Bend";
        $locations->{USOR0118} = "Eugene";
        $locations->{USOR0188} = "La Pine";
        $locations->{USOR0204} = "Madras";
        $locations->{USOR0245} = "Newport";
        $locations->{USOR0275} = "Portland";
        $locations->{USOR0281} = "Prineville";
        $locations->{USOR0284} = "Redmond";
        $locations->{USOR0324} = "Sisters";
        $locations->{USOR0370} = "Warm Springs";
}

sub build_icon_lookup_table {
        my $config = shift;
        open DATA, $config->{icon_lookup_weather} || return;
        while(<DATA>) {
                chomp;
                my ($phrase, $id) = split(/,/, $_);
                $id =~ s/ //g;
                $phrase =~ s/ //g;
                $config->{icon_table}->{$phrase.'weather'} = $id;
        }
        close DATA;
        open DATA, $config->{icon_lookup_sky} || return;
        while(<DATA>) {
                chomp;
                my ($phrase, $id) = split(/,/, $_);
                $id =~ s/ //g;
                $phrase =~ s/ //g;
                $config->{icon_table}->{$phrase.'sky'} = $id;
        }
        close DATA;
}

sub get_current_conditions_icon {
        my $config = shift;
        my $report = shift;
        my $sky = $report->getAttr('SKY');
        $sky =~ s/ //g;
        my $icon = $config->{icon_table}->{$sky.'sky'};
        my $weather = $report->getAttr('WEATHER');
        $weather =~ s/ //g;
        my $weather_icon = $config->{icon_table}->{$weather.'weather'};
        if(!defined $icon || !length $icon) { $icon = $weather_icon; }
        if(!defined $icon || !length $icon) { $icon = "blank"; }
        return $icon;
}

sub current_conditions {
        my $config = shift;

        build_icon_lookup_table($config);

        my @wind = ("NNE","NE","ENE","E","ESE","SE","SSE","S","SSW","SW","WSW","W","WNW","NW","NNW", "N");

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_current.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        if(defined $icon && length $icon) {
                $weather->param("ICON", $icon);
        }
        $weather->param("DESC", $report->getAttr('SKY'));
        $weather->param("WEATHER", $report->getAttr('WEATHER'));
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        $weather->param("BAR", $report->getAttr('PRESSURE'));
        $weather->param("WSPEED", $report->getAttr('WINDSPEED'));
        $weather->param("WCHILL", $report->getAttr('WINDCHILL'));
        my $wdir = $report->getAttr('WINDDIRECTION');
        $wdir = int($wdir/22.5);
        $wdir = $wind[$wdir];
        $weather->param("WDIR", $wdir);
        $weather->param("GUST", $report->getAttr('GUST'));
        $weather->param("DPOINT", $report->getAttr('DEWPOINT'));
        $weather->param("HUMIDITY", $report->getAttr('RELATIVEHUMIDITY'));

        print $weather->output;
}

sub current_conditions_masthead {
        my $config = shift;

        build_icon_lookup_table($config);

        my @wind = ("NNE","NE","ENE","E","ESE","SE","SSE","S","SSW","SW","WSW","W","WNW","NW","NNW", "N");

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_masthead.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        if(defined $icon && length $icon) {
                $weather->param("ICON", $icon);
        }
        $weather->param("DESC", $report->getAttr('SKY'));
        #$weather->param("WEATHER", $report->getAttr('WEATHER'));
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        #$weather->param("BAR", $report->getAttr('PRESSURE'));
        #$weather->param("WSPEED", $report->getAttr('WINDSPEED'));
        #$weather->param("WCHILL", $report->getAttr('WINDCHILL'));
        #my $wdir = $report->getAttr('WINDDIRECTION');
        #$wdir = int($wdir/22.5);
        #$wdir = $wind[$wdir];
        #$weather->param("WDIR", $wdir);
        #$weather->param("GUST", $report->getAttr('GUST'));
        #$weather->param("DPOINT", $report->getAttr('DEWPOINT'));
        #$weather->param("HUMIDITY", $report->getAttr('RELATIVEHUMIDITY'));

        print $weather->output;
}

sub current_conditions_mini {
        my $config = shift;

        build_icon_lookup_table($config);

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_current_mini.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        $weather->param("ICON", $icon);
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        print $weather->output;
}

sub current_mini_json {
        my $config = shift;

        build_icon_lookup_table($config);

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_current_mini_json.js');
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        $weather->param("ICON", $icon);
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        print $weather->output;
}

sub weather_icon {
        my $config = shift;

        build_icon_lookup_table($config);

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_icon.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        $weather->param("ICON", $icon);
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        print $weather->output;
}

sub weather_icon_large {
        my $config = shift;

        build_icon_lookup_table($config);

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_icon_large.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        $weather->param("ICON", $icon);
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        print $weather->output;
}

sub weather_degrees {
        my $config = shift;

        build_icon_lookup_table($config);

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_degrees.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{current}});

        my $station_id = $config->{q}->param('station_id');
        if(!defined $station_id || !length $station_id) {
                $station_id = 'KRDM';
        }

        my @reports = $xml->root->WXWSOBS;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('STATIONID') eq $station_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my $icon = get_current_conditions_icon($config, $report);
        $weather->param("TEMP", $report->getAttr('TEMPERATURE'));
        print $weather->output;
}

sub forecast_desconly {
        my $config = shift;

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_forecast_desconly.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{forecast}});
        my $xml_text = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{forecast_text}});

        my $location_id = $config->{q}->param('location_id');
        if(!defined $location_id || !length $location_id) {
                $location_id = 'USOR0031';
        }

        # my $hed = $config->{q}->param('hed');

        my $day = $config->{q}->param('day');
        if(!defined $day || !length $day) {
                $day = 1;
        }
                my @reports = $xml->root->FORECAST;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('LOCATIONID') eq $location_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my @phrases = $xml_text->root->DAYPART;
        my $daypart = undef;
        foreach my $e (@phrases) {
                if($e->getAttr('LOCATIONID') eq $location_id) {
                        $daypart = $e;
                        last;
                }
        }
        if(!defined $daypart) { return; }

        # $weather->param("HED", $hed);
#       if($report->getAttr("DAY".$day."SKY24") ne '*') {
#               $weather->param("ICON", $report->getAttr("DAY".$day."SKY24"));
#       }
        if($report->getAttr("DAY".$day."DOW") ne '*') {
                $weather->param("DAY", $report->getAttr("DAY".$day."DOW"));
        }
        if($daypart->getAttr("PHRASE".$day) ne '*') {
                $weather->param("DESC", $daypart->getAttr("PHRASE".$day));
        }
#       if($report->getAttr("DAY".$day."HITMPF") ne '*') {
#               $weather->param("HITEMP", $report->getAttr("DAY".$day."HITMPF"));
#       }
#       if($report->getAttr("DAY".$day."LOTMPF") ne '*') {
#               $weather->param("LOTEMP", $report->getAttr("DAY".$day."LOTMPF"));
#       }
#       if($report->getAttr("DAY".$day."POP") ne '*') {
#               $weather->param("POP", $report->getAttr("DAY".$day."POP"));
#       }
#       if($report->getAttr("DAY".$day."WSPDM") ne '*') {
#               $weather->param("WSPEED", $report->getAttr("DAY".$day."WSPDM"));
#       }
#       if($report->getAttr("DAY".$day."WDIR") ne '*') {
#               $weather->param("WDIR", $report->getAttr("DAY".$day."WDIR"));
#       }
#       if($report->getAttr("DAY".$day."SUNRISE") ne '*') {
#               $weather->param("SUNRISE", $report->getAttr("DAY".$day."SUNRISE"));
#       }
#       if($report->getAttr("DAY".$day."SUNSET") ne '*') {
#               $weather->param("SUNSET", $report->getAttr("DAY".$day."SUNSET"));
#       }

        print $weather->output;
}

sub forecast {
        my $config = shift;

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_forecast.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{forecast}});
        my $xml_text = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{forecast_text}});

        my $location_id = $config->{q}->param('location_id');
        if(!defined $location_id || !length $location_id) {
                $location_id = 'USOR0031';
        }

        my $hed = $config->{q}->param('hed');

        my $day = $config->{q}->param('day');
        if(!defined $day || !length $day) {
                $day = 1;
        }

        my @reports = $xml->root->FORECAST;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('LOCATIONID') eq $location_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my @phrases = $xml_text->root->DAYPART;
        my $daypart = undef;
        foreach my $e (@phrases) {
                if($e->getAttr('LOCATIONID') eq $location_id) {
                        $daypart = $e;
                        last;
                }
        }
        if(!defined $daypart) { return; }
        $weather->param("HED", $hed);
        if($report->getAttr("DAY".$day."SKY24") ne '*') {
                $weather->param("ICON", $report->getAttr("DAY".$day."SKY24"));
        }
        if($report->getAttr("DAY".$day."DOW") ne '*') {
                $weather->param("DAY", $report->getAttr("DAY".$day."DOW"));
        }
        if($daypart->getAttr("PHRASE".$day) ne '*') {
                $weather->param("DESC", $daypart->getAttr("PHRASE".$day));
        }
        if($report->getAttr("DAY".$day."HITMPF") ne '*') {
                $weather->param("HITEMP", $report->getAttr("DAY".$day."HITMPF"));
        }
        if($report->getAttr("DAY".$day."LOTMPF") ne '*') {
                $weather->param("LOTEMP", $report->getAttr("DAY".$day."LOTMPF"));
        }
        if($report->getAttr("DAY".$day."POP") ne '*') {
                $weather->param("POP", $report->getAttr("DAY".$day."POP"));
        }
        if($report->getAttr("DAY".$day."WSPDM") ne '*') {
                $weather->param("WSPEED", $report->getAttr("DAY".$day."WSPDM"));
        }
        if($report->getAttr("DAY".$day."WDIR") ne '*') {
                $weather->param("WDIR", $report->getAttr("DAY".$day."WDIR"));
        }
        if($report->getAttr("DAY".$day."SUNRISE") ne '*') {
                $weather->param("SUNRISE", $report->getAttr("DAY".$day."SUNRISE"));
        }
        if($report->getAttr("DAY".$day."SUNSET") ne '*') {
                $weather->param("SUNSET", $report->getAttr("DAY".$day."SUNSET"));
        }

        print $weather->output;
}

sub forecast_mini {
        my $config = shift;

        my $weather = HTML::Template->new(type=>'filename', source=>'/var/www/weather_procs/html_templates/weather_forecast_mini.html');
        timestamp($config, $weather);
        my $xml = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{forecast}});
        my $xml_text = new XML::EasySQL::XMLobj({type => 'file', param => $config->{xml}->{forecast_text}});

        my $location_id = $config->{q}->param('location_id');
        if(!defined $location_id || !length $location_id) {
                $location_id = 'USOR0031';
        }

        my $day = $config->{q}->param('day');
        if(!defined $day || !length $day) {
                $day = 1;
        }

        my @reports = $xml->root->FORECAST;
        my $report = undef;
        foreach my $e (@reports) {
                if($e->getAttr('LOCATIONID') eq $location_id) {
                        $report = $e;
                        last;
                }
        }
        if(!defined $report) { return; }

        my @phrases = $xml_text->root->DAYPART;
        my $daypart = undef;
        foreach my $e (@phrases) {
                if($e->getAttr('LOCATIONID') eq $location_id) {
                        $daypart = $e;
                        last;
                }
        }
        if(!defined $daypart) { return; }

        $weather->param("ICON", $report->getAttr("DAY".$day."SKY24"));
        $weather->param("DAY", $report->getAttr("DAY".$day."DOW"));
        $weather->param("HITEMP", $report->getAttr("DAY".$day."HITMPF"));
        $weather->param("LOTEMP", $report->getAttr("DAY".$day."LOTMPF"));
        $weather->param("POP", $report->getAttr("DAY".$day."POP"));
        $weather->param("SUNRISE", $report->getAttr("DAY".$day."SUNRISE"));
        $weather->param("SUNSET", $report->getAttr("DAY".$day."SUNSET"));

        print $weather->output;
}

sub timestamp {
        my $config = shift;
        my $template = shift;
        my $timestamp = localtime;
        if(ref $template) {
                $template->param("TIMESTAMP", $timestamp);
        }
}

main();


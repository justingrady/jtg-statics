#!/bin/bash

rm ./-q
/var/www/weather_procs/get_weather.sh
/var/www/weather_procs/get_fragments.sh
/var/www/weather_procs/combine_frags.sh
/var/www/weather_procs/get_webcams.sh

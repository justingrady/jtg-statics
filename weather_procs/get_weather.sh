#!/bin/bash
WGET="/usr/bin/wget -q -O -"
XML_DIR="/var/www/weather_procs/xml"

$WGET http://ffc.intellicast.com/FFC/Forecast/bendbulletin.xml > $XML_DIR/forecast.xmlT
echo 1 > $XML_DIR/forecast-wait
mv $XML_DIR/forecast.xmlT $XML_DIR/forecast.xml
rm $XML_DIR/forecast-wait

$WGET http://ffc.intellicast.com/FFC/ForecastText/bendbulletindp.xml > $XML_DIR/forecast_text.xmlT
echo 1 > $XML_DIR/forecast_test-wait
mv $XML_DIR/forecast_text.xmlT $XML_DIR/forecast_text.xml
rm $XML_DIR/forecast_test-wait

$WGET http://ffc.intellicast.com/FFC/Observation/bendbulletinobs.xml > $XML_DIR/current.xmlT
echo 1 > $XML_DIR/current-wait
mv $XML_DIR/current.xmlT $XML_DIR/current.xml
rm $XML_DIR/current-wait

$WGET http://ffc.intellicast.com/ffc/bendbulletin_ski.xml > $XML_DIR/ski.xmlT
echo 1 > $XML_DIR/ski-wait
cat $XML_DIR/ski.xmlT | /var/www/weather_procs/ascii_scrub.pl > $XML_DIR/ski.xml
rm $XML_DIR/ski.xmlT
rm $XML_DIR/ski-wait

/var/www/weather_procs/scrapers/bachelor/run.pl > $XML_DIR/bachelor_snowfall.xmlT
mv $XML_DIR/bachelor_snowfall.xmlT $XML_DIR/bachelor_snowfall.xml

/var/www/weather_procs/scrapers/timberline/run.pl > $XML_DIR/timberline_snowfall.xmlT
mv $XML_DIR/timberline_snowfall.xmlT $XML_DIR/timberline_snowfall.xml

/var/www/weather_procs/scrapers/meadows/run.pl > $XML_DIR/meadows_snowfall.xmlT
mv $XML_DIR/meadows_snowfall.xmlT $XML_DIR/meadows_snowfall.xml

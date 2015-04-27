#!/bin/bash
WGET="/usr/bin/wget -q -O -"
FRAG_PIECES_DIR="/var/www/public_html/weather/fragments/pieces"
FRAG_SCRAPE_DIR="/var/www/public_html/weather/fragments"

#$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_mini_json" > /usr/local/apache/htdocs/bend_weather_current.js
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_mini_json" > $FRAG_PIECES_DIR/bend_weather_current.js


$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=weather_icon" > $FRAG_PIECES_DIR/weather_icon.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=weather_icon_large" > $FRAG_PIECES_DIR/weather_icon_large.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=weather_degrees" > $FRAG_PIECES_DIR/weather_degrees.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini" > $FRAG_PIECES_DIR/current_conditions_mini.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions" > $FRAG_SCRAPE_DIR/current_conditions.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast" > $FRAG_PIECES_DIR/todays_forecast.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast" > $FRAG_PIECES_DIR/24hour_forecast.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3" > $FRAG_PIECES_DIR/forecast_mini3.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4" > $FRAG_PIECES_DIR/forecast_mini4.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5" > $FRAG_PIECES_DIR/forecast_mini5.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6" > $FRAG_PIECES_DIR/forecast_mini6.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7" > $FRAG_PIECES_DIR/forecast_mini7.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_masthead" > $FRAG_SCRAPE_DIR/current_conditions_masthead.html

LOCATIONID="USOR0031"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html


LOCATIONID="USOR0118"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0188"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0204"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0245"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0275"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0281"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0284"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0324"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0370"
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/cgi-bin/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $FRAG_PIECES_DIR/forecast_mini7_$LOCATIONID.html

#$WGET "weather_dev.pl?report=ski_mini&resorts=503004,503003,503006,503009&photos=http://www.mtbachelor.com/@@/cams/srbarcam.jpg,http://webcam1.hoodoo.com/jpg/1/fullsize.jpg,http://skihood.com/cams/mhmbase.jpg,http://www.fsvisimages.com/images/photos-main/MOHO2.jpg" > $FRAG_PIECES_DIR/ski_mini.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini&resorts=503003,503006,503009&photos=http://webcam1.hoodoo.com/jpg/1/fullsize.jpg,http://skihood.com/cams/camimage.ashx?loc=Vista,http://www.fsvisimages.com/images/photos-main/MOHO2.jpg" > $FRAG_PIECES_DIR/ski_mini.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini&resorts=503004" > $FRAG_PIECES_DIR/bachelor_ski_mini.html

$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=OR" > $FRAG_PIECES_DIR/ski_mini_OR.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=WA" > $FRAG_PIECES_DIR/ski_mini_WA.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=UT" > $FRAG_PIECES_DIR/ski_mini_UT.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=NM" > $FRAG_PIECES_DIR/ski_mini_NM.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=BC" > $FRAG_PIECES_DIR/ski_mini_BC.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=CO" > $FRAG_PIECES_DIR/ski_mini_CO.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=CA" > $FRAG_PIECES_DIR/ski_mini_CA.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=MT" > $FRAG_PIECES_DIR/ski_mini_MT.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=WY" > $FRAG_PIECES_DIR/ski_mini_WY.html
$WGET "http://statics.bendbulletin.com/cgi-bin/ski_conditions.pl?report=ski_mini_state&state=ID" > $FRAG_PIECES_DIR/ski_mini_ID.html

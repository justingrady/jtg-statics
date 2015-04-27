#!/bin/bash
WGET="/usr/bin/wget -O -"
XML_DIR="/var/www/public_html/weather/fragments"

$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_mini_json" > /usr/local/apache/htdocs/bend_weather_current.js
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_mini_json" > $XML_DIR/bend_weather_current.js


$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=weather_icon" > $XML_DIR/weather_icon.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=weather_icon_large" > $XML_DIR/weather_icon_large.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=weather_degrees" > $XML_DIR/weather_degrees.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini" > $XML_DIR/current_conditions_mini.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions" > $XML_DIR/current_conditions.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast" > $XML_DIR/todays_forecast.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast" > $XML_DIR/24hour_forecast.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3" > $XML_DIR/forecast_mini3.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4" > $XML_DIR/forecast_mini4.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5" > $XML_DIR/forecast_mini5.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6" > $XML_DIR/forecast_mini6.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7" > $XML_DIR/forecast_mini7.html
$WGET "weather_dev2.pl?report=current_conditions_masthead" > $XML_DIR/current_conditions_masthead.html

LOCATIONID="USOR0031"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html


LOCATIONID="USOR0118"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0188"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0204"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0245"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0275"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0281"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0284"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0324"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0370"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

#$WGET "weather_dev.pl?report=ski_mini&resorts=503004,503003,503006,503009&photos=http://www.mtbachelor.com/@@/cams/srbarcam.jpg,http://webcam1.hoodoo.com/jpg/1/fullsize.jpg,http://skihood.com/cams/mhmbase.jpg,http://www.fsvisimages.com/images/photos-main/MOHO2.jpg" > $XML_DIR/ski_mini.html
$WGET "ski_conditions.pl?report=ski_mini&resorts=503003,503006,503009&photos=http://webcam1.hoodoo.com/jpg/1/fullsize.jpg,http://skihood.com/cams/camimage.ashx?loc=Vista,http://www.fsvisimages.com/images/photos-main/MOHO2.jpg" > $XML_DIR/ski_mini.html
$WGET "ski_conditions.pl?report=ski_mini&resorts=503004" > $XML_DIR/bachelor_ski_mini.html

$WGET "ski_conditions.pl?report=ski_mini_state&state=OR" > $XML_DIR/ski_mini_OR.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=WA" > $XML_DIR/ski_mini_WA.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=UT" > $XML_DIR/ski_mini_UT.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=NM" > $XML_DIR/ski_mini_NM.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=BC" > $XML_DIR/ski_mini_BC.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=CO" > $XML_DIR/ski_mini_CO.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=CA" > $XML_DIR/ski_mini_CA.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=MT" > $XML_DIR/ski_mini_MT.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=WY" > $XML_DIR/ski_mini_WY.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=ID" > $XML_DIR/ski_mini_ID.htmlubuntu@ip-10-236-202-164:/var/www/weather_procs/fragments$ 
ubuntu@ip-10-236-202-164:/var/www/weather_procs/fragments$ 
ubuntu@ip-10-236-202-164:/var/www/weather_procs/fragments$ 
ubuntu@ip-10-236-202-164:/var/www/weather_procs/fragments$ clear

ubuntu@ip-10-236-202-164:/var/www/weather_procs/fragments$ cat get_fragments.sh 
#!/bin/bash
WGET="/usr/bin/wget -O -"
XML_DIR="/var/www/public_html/weather/fragments"

$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_mini_json" > /usr/local/apache/htdocs/bend_weather_current.js
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_mini_json" > $XML_DIR/bend_weather_current.js


$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=weather_icon" > $XML_DIR/weather_icon.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=weather_icon_large" > $XML_DIR/weather_icon_large.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=weather_degrees" > $XML_DIR/weather_degrees.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini" > $XML_DIR/current_conditions_mini.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions" > $XML_DIR/current_conditions.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast" > $XML_DIR/todays_forecast.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast" > $XML_DIR/24hour_forecast.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3" > $XML_DIR/forecast_mini3.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4" > $XML_DIR/forecast_mini4.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5" > $XML_DIR/forecast_mini5.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6" > $XML_DIR/forecast_mini6.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7" > $XML_DIR/forecast_mini7.html
$WGET "weather_dev2.pl?report=current_conditions_masthead" > $XML_DIR/current_conditions_masthead.html

LOCATIONID="USOR0031"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html


LOCATIONID="USOR0118"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0188"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0204"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0245"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0275"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0281"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0284"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0324"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

LOCATIONID="USOR0370"
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions_mini&location_id=$LOCATIONID" > $XML_DIR/current_conditions_mini_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=current_conditions&location_id=$LOCATIONID" > $XML_DIR/current_conditions_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=1&hed=Today's%20Forecast&location_id=$LOCATIONID" > $XML_DIR/todays_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast&day=2&hed=24-Hour%20Forecast&location_id=$LOCATIONID" > $XML_DIR/24hour_forecast_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=3&location_id=$LOCATIONID" > $XML_DIR/forecast_mini3_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=4&location_id=$LOCATIONID" > $XML_DIR/forecast_mini4_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=5&location_id=$LOCATIONID" > $XML_DIR/forecast_mini5_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=6&location_id=$LOCATIONID" > $XML_DIR/forecast_mini6_$LOCATIONID.html
$WGET "http://statics.bendbulletin.com/weather/weather.pl?report=forecast_mini&amp;day=7&location_id=$LOCATIONID" > $XML_DIR/forecast_mini7_$LOCATIONID.html

#$WGET "weather_dev.pl?report=ski_mini&resorts=503004,503003,503006,503009&photos=http://www.mtbachelor.com/@@/cams/srbarcam.jpg,http://webcam1.hoodoo.com/jpg/1/fullsize.jpg,http://skihood.com/cams/mhmbase.jpg,http://www.fsvisimages.com/images/photos-main/MOHO2.jpg" > $XML_DIR/ski_mini.html
$WGET "ski_conditions.pl?report=ski_mini&resorts=503003,503006,503009&photos=http://webcam1.hoodoo.com/jpg/1/fullsize.jpg,http://skihood.com/cams/camimage.ashx?loc=Vista,http://www.fsvisimages.com/images/photos-main/MOHO2.jpg" > $XML_DIR/ski_mini.html
$WGET "ski_conditions.pl?report=ski_mini&resorts=503004" > $XML_DIR/bachelor_ski_mini.html

$WGET "ski_conditions.pl?report=ski_mini_state&state=OR" > $XML_DIR/ski_mini_OR.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=WA" > $XML_DIR/ski_mini_WA.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=UT" > $XML_DIR/ski_mini_UT.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=NM" > $XML_DIR/ski_mini_NM.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=BC" > $XML_DIR/ski_mini_BC.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=CO" > $XML_DIR/ski_mini_CO.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=CA" > $XML_DIR/ski_mini_CA.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=MT" > $XML_DIR/ski_mini_MT.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=WY" > $XML_DIR/ski_mini_WY.html
$WGET "ski_conditions.pl?report=ski_mini_state&state=ID" > $XML_DIR/ski_mini_ID.html

#!/bin/bash

FRAG_PIECES_DIR="/var/www/public_html/weather/fragments/pieces"
FRAG_SCRAPE_DIR="/var/www/public_html/weather/fragments"
FRAG_HELP_DIR="/var/www/public_html/weather"


#Bend Weather
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast.html $FRAG_PIECES_DIR/24hour_forecast.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3.html $FRAG_PIECES_DIR/forecast_mini4.html $FRAG_PIECES_DIR/forecast_mini5.html $FRAG_PIECES_DIR/forecast_mini6.html $FRAG_PIECES_DIR/forecast_mini7.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/bend_weather.html

#Eugene USOR0118
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0118.html $FRAG_PIECES_DIR/24hour_forecast_USOR0118.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0118.html $FRAG_PIECES_DIR/forecast_mini4_USOR0118.html $FRAG_PIECES_DIR/forecast_mini5_USOR0118.html $FRAG_PIECES_DIR/forecast_mini6_USOR0118.html $FRAG_PIECES_DIR/forecast_mini7_USOR0118.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/eugene_weather.html

#La Pine USOR0188
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0188.html $FRAG_PIECES_DIR/24hour_forecast_USOR0188.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0188.html $FRAG_PIECES_DIR/forecast_mini4_USOR0188.html $FRAG_PIECES_DIR/forecast_mini5_USOR0188.html $FRAG_PIECES_DIR/forecast_mini6_USOR0188.html $FRAG_PIECES_DIR/forecast_mini7_USOR0188.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/lapine_weather.html

#Madras USOR0204
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0204.html $FRAG_PIECES_DIR/24hour_forecast_USOR0204.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0204.html $FRAG_PIECES_DIR/forecast_mini4_USOR0204.html $FRAG_PIECES_DIR/forecast_mini5_USOR0204.html $FRAG_PIECES_DIR/forecast_mini6_USOR0204.html $FRAG_PIECES_DIR/forecast_mini7_USOR0204.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/madras_weather.html

#Newport USOR0245
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0245.html $FRAG_PIECES_DIR/24hour_forecast_USOR0245.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0245.html $FRAG_PIECES_DIR/forecast_mini4_USOR0245.html $FRAG_PIECES_DIR/forecast_mini5_USOR0245.html $FRAG_PIECES_DIR/forecast_mini6_USOR0245.html $FRAG_PIECES_DIR/forecast_mini7_USOR0245.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/newport_weather.html

#Portland USOR0275
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0275.html $FRAG_PIECES_DIR/24hour_forecast_USOR0275.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0275.html $FRAG_PIECES_DIR/forecast_mini4_USOR0275.html $FRAG_PIECES_DIR/forecast_mini5_USOR0275.html $FRAG_PIECES_DIR/forecast_mini6_USOR0275.html $FRAG_PIECES_DIR/forecast_mini7_USOR0275.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/portland_weather.html

#Prineville USOR0281
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0281.html $FRAG_PIECES_DIR/24hour_forecast_USOR0281.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0281.html $FRAG_PIECES_DIR/forecast_mini4_USOR0281.html $FRAG_PIECES_DIR/forecast_mini5_USOR0281.html $FRAG_PIECES_DIR/forecast_mini6_USOR0281.html $FRAG_PIECES_DIR/forecast_mini7_USOR0281.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/prineville_weather.html

#Redmond USOR0284
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0284.html $FRAG_PIECES_DIR/24hour_forecast_USOR0284.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0284.html $FRAG_PIECES_DIR/forecast_mini4_USOR0284.html $FRAG_PIECES_DIR/forecast_mini5_USOR0284.html $FRAG_PIECES_DIR/forecast_mini6_USOR0284.html $FRAG_PIECES_DIR/forecast_mini7_USOR0284.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/redmond_weather.html

#Sisters USOR0324
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0324.html $FRAG_PIECES_DIR/24hour_forecast_USOR0324.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0324.html $FRAG_PIECES_DIR/forecast_mini4_USOR0324.html $FRAG_PIECES_DIR/forecast_mini5_USOR0324.html $FRAG_PIECES_DIR/forecast_mini6_USOR0324.html $FRAG_PIECES_DIR/forecast_mini7_USOR0324.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/sisters_weather.html

#Warm Springs USOR0370
cat $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_PIECES_DIR/todays_forecast_USOR0370.html $FRAG_PIECES_DIR/24hour_forecast_USOR0370.html $FRAG_HELP_DIR/col_sm_2_top.html $FRAG_HELP_DIR/endDiv.html $FRAG_HELP_DIR/rowStart.html $FRAG_HELP_DIR/col_sm_2.html $FRAG_PIECES_DIR/forecast_mini3_USOR0370.html $FRAG_PIECES_DIR/forecast_mini4_USOR0370.html $FRAG_PIECES_DIR/forecast_mini5_USOR0370.html $FRAG_PIECES_DIR/forecast_mini6_USOR0370.html $FRAG_PIECES_DIR/forecast_mini7_USOR0370.html $FRAG_HELP_DIR/endDiv.html > $FRAG_SCRAPE_DIR/warmsprings_weather.html


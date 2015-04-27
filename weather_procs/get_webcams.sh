#!/bin/bash
WGET="/usr/bin/wget -q -O -"
CAM_DIR="/var/www/public_html/weather/webcams"

$WGET http://www.tripcheck.com/roadcams/cams/NorthDivision_pid604.jpg > $CAM_DIR/NorthDivision_pid604.jpg;
$WGET http://www.tripcheck.com/roadcams/cams/Sisters_pid653.jpg > $CAM_DIR/Sisters_pid653.jpg;
$WGET http://www.tripcheck.com/RoadCams/cams/Santiam%20Pass_pid2728.JPG > $CAM_DIR/SantiamPass_pid605.jpg;
$WGET http://www.tripcheck.com/roadcams/cams/GovernmentCamp_pid624.jpg > $CAM_DIR/GovernmentCamp_pid624.jpg;
$WGET http://www.tripcheck.com/roadcams/cams/LavaButte_pid631.jpg > $CAM_DIR/LavaButte_pid631.jpg;
$WGET http://www.tripcheck.com/roadcams/cams/LaPine_pid630.jpg > $CAM_DIR/LaPine_pid630.jpg;

$WGET http://www.mtbachelor.com/winter/mountain/cams/nordiclodge/fullsize.image > $CAM_DIR/mtbachelor_nordic.jpg;
$WGET http://www.mtbachelor.com/winter/mountain/cams/snowsports/fullsize.image > $CAM_DIR/mtbachelor_snowSports.jpg;
$WGET http://www.mtbachelor.com/winter/mountain/cams/pmobx/fullsize.image > $CAM_DIR/mtbachelor_topOutback.jpg;
$WGET http://www.mtbachelor.com/winter/mountain/cams/pmxlift/fullsize.image > $CAM_DIR/mtbachelor_pineMartin.jpg;

#using ImageMagick to resize images.  height parameter doesn't matter - it keeps aspect ratio.
convert $CAM_DIR/NorthDivision_pid604.jpg  -resize 420x420 $CAM_DIR/big_NorthDivision.jpg
convert $CAM_DIR/NorthDivision_pid604.jpg  -resize 200x200 $CAM_DIR/small_NorthDivision.jpg
convert $CAM_DIR/Sisters_pid653.jpg  -resize 420x420 $CAM_DIR/big_Sisters.jpg
convert $CAM_DIR/Sisters_pid653.jpg  -resize 200x200 $CAM_DIR/small_Sisters.jpg
convert $CAM_DIR/SantiamPass_pid605.jpg  -resize 420x420 $CAM_DIR/big_SantiamPass.jpg
convert $CAM_DIR/SantiamPass_pid605.jpg  -resize 200x200 $CAM_DIR/small_SantiamPass.jpg
convert $CAM_DIR/GovernmentCamp_pid624.jpg  -resize 420x420 $CAM_DIR/big_GovernmentCamp.jpg
convert $CAM_DIR/GovernmentCamp_pid624.jpg  -resize 200x200 $CAM_DIR/small_GovernmentCamp.jpg
convert $CAM_DIR/LavaButte_pid631.jpg  -resize 420x420 $CAM_DIR/big_LavaButte.jpg
convert $CAM_DIR/LavaButte_pid631.jpg  -resize 200x200 $CAM_DIR/small_LavaButte.jpg
convert $CAM_DIR/LaPine_pid630.jpg  -resize 420x420 $CAM_DIR/big_LaPine.jpg
convert $CAM_DIR/LaPine_pid630.jpg  -resize 200x200 $CAM_DIR/small_LaPine.jpg

convert $CAM_DIR/mtbachelor_nordic.jpg -resize 200x200 $CAM_DIR/small_mtbachelor_nordic.jpg
convert $CAM_DIR/mtbachelor_snowSports.jpg -resize 200x200 $CAM_DIR/small_mtbachelor_snowSports.jpg
convert $CAM_DIR/mtbachelor_topOutback.jpg -resize 200x200 $CAM_DIR/small_mtbachelor_topOutback.jpg
convert $CAM_DIR/mtbachelor_pineMartin.jpg -resize 200x200 $CAM_DIR/small_mtbachelor_pineMartin.jpg


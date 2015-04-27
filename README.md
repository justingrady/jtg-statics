## bb-statics

Static files for BendBulletin.com, includes Bootstrap framework.

Lives on http://statics.bendbulletin.com.

Need user added to GitHub/Wescom

# Mockup views
* [Home](http://statics.bendbulletin.com/views/home.html) The Bulletin Homepage
* [Article View](http://statics.bendbulletin.com/views/article-view.html) Example article
* [Section Front](http://statics.bendbulletin.com/views/section-front.html) Example section front
* [Basic](http://statics.bendbulletin.com/views/basic.html) The basic donut.

# Documentation Links
* [Bootstrap](http://getbootstrap.com/) CSS framework
* [CodeKit](https://incident57.com/codekit/) Tool to compile sass and compass css files
* [Sass](http://sass-lang.com/) CSS Processor
* [Compass](http://compass-style.org/) Added CSS processing functions
* [Jade](http://jade-lang.com/) HTML template system

# Directory Structure

* **public_html** This directory houses every accessible from the web
  * **css** Compiled CSS
  * **images** Generated and static images
  * **js** Compiled javascripts
  * **fonts** Open fonts
* **sass** Source files in sass format   
* **codekit-config.json** Settings for codekit. Keep this file updated if making changes. This allows all developers to build the same way
* **config.rb** Settings for compass. This sets directories.

# Design

Color pallette:
body: #FFFFFF (white)
headlines: #000000 (black)
body copy: #1b1b1b (halfway between #000000 and #333333)
a:link : #035CB6;
a:hover: #0576e8;
a:active: #cc0000;
a:visited: 

Header (including ads):
Top ad area. Ad size of 728x90 centered within container. Background of #333333.
Navigation below ad area.

Navigation: 
Make look like Politico, flat design is alright though.
http://www.politico.com

Navigation needs to 'stick' at top of page upon scroll. Also upon scroll, have search box on right.

Front page:
-> Upper: slideshow carousel like utsandiego.com
--> include headline below photo
--> as well as icons, have previous and next text
--> delay init for 2 seconds before slideshow starts

Section front:
What there is now, but without that center column crud:
http://www.bendbulletin.com/apps/pbcs.dll/section?Profile=1011&ExpNodes=1011&Category=BIZ01

Newsitem on section front layout:
each 'newsitem' to look like this:
http://jalopnik.com/

Right rail:
Viewable only in desktop view, goes away in tablet view.  But, some elements such as widgets/modules would drop below the center column content on viewport shrinkage.

Footer:
-> nav in footer: what is there now
background: #000000;

stuff
-> footer links area:
background: #333333

is responsive. Right logo and subscribe go away viewports smaller than desktop.



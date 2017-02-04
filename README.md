# Bash Tools for Repeated Tasks

This repository contains a collection of Bash scripts that have been developed over time to automate dull and repeated tasks.



# AMOD AGL 3080

Owning an [AMOD AGL 3080](http://module.amod.com.tw/Product/product_more.asp?vrlShohL) is a lot of fun as it allows to easily create GPS tracks which can eventually be used to geotag photos. Working with the [NMEA 0183](https://en.wikipedia.org/wiki/NMEA_0183) sentences produced by the device is not so much fun as

1. Not a lot of geotagging applications support NMEA 0183 sentences out of the box
2. Each GPS track is stored in its own file which makes batch geotagging photos time consuming

Hence, the need for a collection of Bash scripts which automate the

1. _Concatenation_ and verification as well as the
2. _Conversion_ of the concatenated GPS tracks

was born.


# Sigal Photo Gallery

Taking and geotagging photos is great but sharing them with loved ones is even better. The tool of choice is the excellent [Sigal Gallery Builder](https://github.com/saimn/sigal). As I've come to customise Sigal a bit in terms of setup and plugins, the need to 

 - automatically package numerous GPS tracks into a specific file format that could be picked up by a custom Sigal plugin and
 - the initialisation of directories

arose.
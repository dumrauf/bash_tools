# AMOD AGL 3080 Tools

This directory contains a collection of scripts that make working with GPS tracks produced by an [AMOD AGL 3080](http://module.amod.com.tw/Product/product_more.asp?vrlShohL) device easier.

Even though the files bare the ``.log`` extension, they are actually [NMEA 0183](https://en.wikipedia.org/wiki/NMEA_0183) sentences.

For each track, the AMOD AGL 3080 creates a file named after the GPS time stamp when it was created. So, the file ``GPS_20851208_104104.log`` would have been created on 08/12/2085 at 10:41:04 UTC.

The need to easily combine, convert, and efficiently work with files produced by an NMEA 3080 device gave rise to the following categories of scripts.



# One Stop Scripts

For repeated tasks, the following scripts have been added:

- ``combine_amod_tracks`` concatenates all files that match the pattern ``GPS_*.log`` in lexicographical order to the given output filename
- ``create_and_convert_daily_amod_track`` first executes the ``create_daily_amod_gps_track`` script; this execution can be customized  by an optional flag that suppresses the execution of the ``create_daily_amod_gps_track`` script if only one GPS file could be detected. Afterwards, this script passes the most recently modified ``GPS*.log`` file to the ``convert_nmea_to_gpx`` script to convert it to GPX.
- ``create_daily_amod_gps_track`` concatenates all files in the current directory that match the expression ``GPS*.log``; here sorting is in lexicographical order



# Verifying and Collecting Tracks

For verifying and collecting GPS files, the following scripts have been added:

- ``check_combined_amod_tracks`` checks that the given filename contains at most one string ``$ADVER,3080,2.3``
- ``collect_all_daily_amod_tracks`` script copies all files matching the ``.*GPS_[^_]+\.log`` from the given input directory to the supplied output directory



# Converting Tracks

For converting tracks, the following scripts are provided:

- ``convert_nmea_to_gpx`` convertes the NMEA 0813 sentences in the input file to GPX in the supplied output file
- ``combine_amod_tracks`` concatenates all FILES that match the pattern ``GPS_*.log`` in lexicographical order to the given output filename
- ``simplify_nmea_track`` convertes the NMEA 0813 sentences input file to the supplied output file, using the given output format

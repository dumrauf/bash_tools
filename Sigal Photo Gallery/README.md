# Sigal Photo Gallery Tools

This directory contains a collection of scripts that make working with [Sigal Gallery Builder](https://github.com/saimn/sigal) and its plugins easier.



# Creating Sigal Gallery GPS Tracks

The ``create_sigal_gallery_gps_track`` is highly tailored towards the ``display_gps_tracks`` plugin for Sigal. The script first combines all AMOD tracks in the current directory to a single ``index.log`` file and then zips the ``index.log`` in ``index.log.zip``. Note that this matches the file format expected by Sigal plugin.



# Creating 'Public Album' Folders

The ``init_public_album`` script creates a directory named _Public Album_ in the current directory.

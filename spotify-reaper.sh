#!/bin/sh
spotify &
sleep 20 # Give plenty of time for Spotify to launch
pw-metadata -n settings 0 clock.force-quantum 256  # Leads to 5.8 ms latency
pw-jack reaper &
sleep 2  # Give also Reaper some time to fire up
qpwgraph -a spotify-reaper-patchbay.qpwgraph &  # Read wiring config file

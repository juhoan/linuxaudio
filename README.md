# Introduction

The goal is to:
* Connect your guitar to a laptop running on Ubuntu
* Add real-time effects and amp simulations for playing
* Record your playing

This documentation is work-in-progress and some bigger and smaller details are still missing.

# Solution

This repo describes what is needed. Also a little script is included for launching Spotify and REAPER and wiring up the audio connections so that you can play your guitar and listen to Spotify at the same time.

## Software required

`TODO: Add installation instructions.`

* Ubuntu (I'm running Ubuntu `25.10`)
* Spotify desktop app (I'm running the Snap version `1.2.82.428.g0ac8be2b`)
* REAPER Digital Audio Workstation (DAW) (I'm running version `7.67`, registered for personal/small business use, but a trial version should work as well)
* Pipewire
* qpwgraph
* AmpliTube amp and effect simulation software (you need to use Wine to be able to use the VST plugin on Ubuntu)

## Hardware required

* PC (I'm using Lenovo T15p laptop)
* Scarlett Solo (3rd Gen) USB sound card
* Electric guitar...
* Instrument cable to connect the guitar to the sound card
* Headphones (I'm using Bose QuietComfort 45)
* Headphone cable(s) to connect the USB sound card to headphones
  * USB sound card output is 6.3 mm
* USB cable for connecting sound card to laptop
  * Sound card output is USB-C
  * Computer input is USB-A

## Running the script

```
./spotify-reaper.sh
```

## Misc notes

* Bluetooth's latency is too high for real-time playing, so you need to connect the headphones to the sound card using a cable instead.
* Running the script leads to 5.8 ms latency which is certainly low enough for my hobby purposes. If you hear clicks and glitches, you might need to adjust the value `256` in the script to something else until you're fine or get a more powerful computer.
* AmpliTube's UI controls seem to be rather buggy on Ubuntu. However, it seems that you can use the dials by double clicking them and then dragging the knob to the desired setting using your touchpad.
* Having the AmpliTube UI visible in REAPER seems to lead to glitches in real-time use, so it is a good idea to close the UI when you are done with setting things up.
* It may be a good idea to adjust your computer's power settings for maximum performance.

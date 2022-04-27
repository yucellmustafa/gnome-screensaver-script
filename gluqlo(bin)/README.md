# Gluqlo (bin)

**Adapted version of [Gluqlo project](https://github.com/alexanderk23/gluqlo) to start from terminal.**

## Build

First, install build-time dependencies (Ubuntu/Debian):

`sudo apt-get install build-essential libsdl1.2-dev libsdl-ttf2.0-dev libsdl-gfx1.2-dev libx11-dev`

for Fedora:

`sudo dnf install g++ sdl12-compat-devel SDL_ttf-devel SDL_gfx-devel`

Then compile and install as usual:

`make && sudo make install`

for uninstall:

`sudo make uninstall`

## Usage

`gluqlo <params>`

example:

`gluqlo -root -leadingzero -anykeyclose`

params:

```
-root            Fullscreen
-noflip          Disable the flip animation
-anykeyclose     Close app when mouse move or any key pressed
-ampm            Use 12-hour clock format (AM/PM)
-leadingzero     Always display hour with two digits
-w               Custom width
-h               Custom height
-r               Custom resolution in WxH format
-s               Custom display scale factor (0.5-1.5)
```
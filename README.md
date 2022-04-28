# gnome-screensaver-script

Run a command as a screensaver for Gnome. This is what works.

I use gluqlo. The version I edited to run from the terminal: [gluqlo(bin)](https://github.com/yucellmustafa/gnome-screensaver-script/tree/main/gluqlo(bin))

It supports both X11 and Wayland.

I added wayland support and more features using this [script](https://alvinalexander.com/source-code/ubuntu-shell-script-screensaver-rotate-images/).

## Installation

Required dependencies: `python3 xvinfo`

Let's clone the repo and enter the folder: `git clone https://github.com/yucellmustafa/gnome-screensaver-script && cd gnome-screensaver-script`

For installation: `sudo chmod +x ./make.sh && sudo ./make.sh install`

For uninstallation: `sudo ./make.sh uninstall`

## Usage

```bash
gscreensaver [-t <idle time (s)>] -l [-c <commands>]

-t <idle time (s)> - time in seconds before screensaver is started

-c <commands>      - commands to run as screensaver

-l                 - lock screen after screensaver

-h                 - this help message
```

Example: `gscreensaver -t 300 -l -c "gluqlo -root -leadingzero -anykeyclose"`

Autostarter for command to run when system starts (customize exec part):

```bash
echo "[Desktop Entry]
Name=gscreensaver
Comment=gscreensaver
Exec=gscreensaver -t 300 -l -c "gluqlo -root -leadingzero -anykeyclose"
Type=Application
Terminal=false
Hidden=false" | sudo tee ~/.config/autostart/gscreensaver.desktop
```
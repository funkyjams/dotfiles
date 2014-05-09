Dotfiles
========

This repo contains the configuration files for a pretty desktop like this:
http://imgur.com/a/hQwe3


### Specs

* OS: CentOS 6.5
* WM: Openbox
* Fonts: Inconsolata for terminal & panel, Liberation sans for the rest
* OB theme: Variation on the moka theme, look at themes/Moka-Bordeaux for more details
* GTK theme: Dyne, in themes/Dyne


### Dzen2 Bar and Popup

My panel and popups are custom bash scripts, written from scratch. The panel was inspired by the dwm panel, which only shows the title of the selected window. There are a few prerequisite packages for this script to work:
* wmctrl
* xdotool
* lm_sensors


#### dzen_bar
The top Panel, run dzen_bar for an automatically updating panel.  You might want to change a few settings, like:
* The font & colors
* The date format
* Look at the outputs of xdotool and wmctrl, you might need to change a few things depending on your OS and WM
* For the Temp() function, I have a script called temp, which greps the core temperature from lm_sensors. Since I believe the output of lm_sensors is dependent on the motherboard, I didn't include it in bin/.

Bonus: If you click the little circles in the top left corner, it'll move you to the corresponding desktop.

#### dzen_cal
Displays a Calendar of the month

#### dzen_tpop
Displays the temperature of a set number of cores. Set it to whatever you like. Again you'll need a script (here called temp) to grep the temperature from lm_sensors.

#### dzen_windows
If you click on your desktop name, a popup shows up and lists the windows open on all desktop (I counldn't find a way to be desktop specific). And if you click on the name of a window, it switches to it. Isn't this awesome?!? This one was definitely my favorite/hardest to code.

#### dzen_volume
This popup shows the volumes mounted and how much space is available on each of these. Color corresponds to percentage of available space. Obviously this will require some adjustments on other systems.

#### dzen_net
Shows the upload and download rate for a given connection (here eth1). I have not found a way to make it instataneous yet.


### URxvt

For terminal emulation, I use URxvt with a couple of patches and extensions:

* Noinc patch: https://aur.archlinux.org/packages/rxvt-unicode-patched-noinc/

Prevents from sending resize hints to openbox. Better for tiling and key-bindings.

* Vt-wheel: https://aur.archlinux.org/packages/urxvt-vtwheel/

Lets you use the scrollwheel in man pages

* Font-size: https://aur.archlinux.org/packages/urxvt-font-size-git/

Allows you to create keybindings to change the font size on the fly.


### Dmenu

I use a fork of dmenu: https://aur.archlinux.org/packages/urxvt-font-size-git/. It has a few cool patches: xft support and qwxyh (Quiet, Width, Height, X and Y position (I dont use the Q)).


### Background:

Desktopography is a wonderful organization of artists who, once a year, give us some of the most beautiful backgrounds. Please don't copy to background aggregation sites without linking the original source. Here it is, enjoy:
http://www.desktopography.net



### Where to put everything.

* Anything in bin/ must go somewhere in your $PATH. ideally ~/bin or ~/.bin
* The folders in config go in ~/.config,
* The themes in themes/ go in ~/.themes or /usr/share/themes
* vimrc, bashrc, and Xresources go to ~/.vimrc, ~/.bashrc and ~/.Xresources respectively. You can use bits and pieces but I suggest you don't copy and paste my settings (If you don't know what it does, you shouldn't erase/overwrite it)



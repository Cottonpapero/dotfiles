# Xmonad Config

**Xmonad** is a tiling window manager based on Xorg and written in haskell. It's main philosophies are deep customizability and easy extensibility.

# Dependancies
The main packages used in my configuration are:
* [xmonad](https://github.com/xmonad/xmonad) - The core package
* [xmonad-contrib](https://github.com/xmonad/xmonad-contrib) - A community-maintained extension library for xmonad
* [xmobar](https://github.com/jaor/xmobar) - A status bar made for xmonad
* [dmenu](https://tools.suckless.org/dmenu/) - A dynamic menu that will be used as the main utility for running programs

With some additional and purely cosmetic packages, such as:
***TBD***

# Installation

## Arch

The official Arch Linux repository contains most of the packages needed. *However*, the main repo tends lag behind on versions and GHC can have trouble locating the needed libraries, so it's ***highly***
recommended to install GHC and all of the Haskell packages through [Hackage's Stack toolchain](https://docs.haskellstack.org/en/stable/README/). This comes with
a lot of benefits like running the compiler in an isolated location, particularly useful for tinkering with a window manager.

Most of info for this section was taken from [Biran Buccola's blogpost](https://brianbuccola.com/how-to-install-xmonad-and-xmobar-via-stack/)

### Installing Stack

To install via curl:
```
curl -sSL https://get.haskellstack.org/ | sh
```
Alternatively you can clone the Stack repo and build it with pacman so you can sync it's upgrading with the rest of your system.

## Debian

***TBD***

# Running Xmonad

There are a morbidly stupid amount of ways for running your desktop environment, I will brush over the two main methods here: running `.xinitrc` directly
and adding a session entry in `/usr/share/xsessions` for a display manager to run such as [LightDM](https://github.com/canonical/lightdm)

### Xinitrc

Make sure to install the `` package on Debian and `` package on Arch

### LightDM


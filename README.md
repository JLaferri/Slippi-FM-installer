# Project Slippi

This is a fork of the [Faster Melee build script for Linux](https://github.com/FasterMelee/FasterMelee-installer)
specific to building Ishiiruka with Project Slippi support. It currently supports building the following versions 
of the Slippi Ishiiruka fork:

- Slippi Ishiiruka r9: `506ac2e60489edb7a854c59e526ddcf62880f5f9`

## Usage
```sh
sh -c "$(curl -Ls https://github.com/hosaka-corp/Slippi-FM-installer/raw/master/setup)"
```

------------------------------------

# Notes from Upstream

## Dependencies needed (install these first!)
For most users, see [this page](https://wiki.dolphin-emu.org/index.php?title=Building_Dolphin_on_Linux) for an easy to install list of dependencies; otherwise, see below.

### Fedora:

`dnf install cmake git gcc-c++ libXext-devel libgudev gtk+-devel wxGTK-devel systemd-devel openal-soft-devel libevdev-devel libao-devel SOIL-devel libXrandr-devel pulseaudio-libs-devel bluez-libs-devel libusb-devel`

### Solus (possible list, untested):

`sudo eopkg it -c system.devel`

`sudo eopkg it libgtk-2-devel libgtk-3-devel wxwidgets-devel libsm-devel gtest-devel llvm-devel lzo-devel mbedtls-devel miniupnpc-devel libxrandr-devel libxi-devel alsa-lib-devel bluez-devel mesalib-devel curl-devel enet-devel libevdev-devel pulseaudio-devel libusb-devel openal-soft-devel portaudio-devel sdl2-devel SFML-devel soundtouch-devel git cmake pkg-config gcc readline-devel libxext-devel libao-devel`

### Thanks to:

/u/ParadigmComplex. Seriously, I could not have finished the original script without this guy.

/u/jojorino and Hannesmann, always testing and helping, as well as the rest of the FM discord!

Also thanks to xanax, CilanMan, /u/algebra123230, /u/folfess for incremental improvements!

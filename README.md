# Haruhi Heiretsu Translation Bootstrapping

This repository contains tools for building the Riivolution patch of Suzumiya Haruhi no Heiretsu (The Parallel of Haruhi Suzumiya).

## Obtaining a ROM
In order to build the patch, you will require a copy of the Suzumiya Haruhi no Heiretsu ROM. Please purchase the game [here](https://www.play-asia.com/suzumiya-haruhi-no-heiretsu/13/70337j) and then
follow [these instructions](https://wiki.dolphin-emu.org/index.php?title=Ripping_Games) to rip the ROM.

## Required Tools
* [Wit](https://wit.wiimm.de/)
* [Wiinject](https://github.com/jonko0493/Wiinject)
* [HaruhiHeiretsuCLI](https://github.com/jonko0493/HaruhiHeiretsuEditor/)
* [devkitPro](https://devkitpro.org/wiki/Getting_Started)

### Environment Variables
If using the BATs rather than the PS1s, please set the following environment variables:
* `%WIINJECT_PATH%` &ndash; The path to your Wiinject installation.
* `%HEIRETSU_CLI_PATH%` &ndash; The path to your HaruhiHeiretsuCLI installation.
* `%DEVKITPRO_PATH%` &ndash; The path to your devkitPro installation folder.

## Usage

The patch can either be built as a Riivolution patch or a directly patched Wii ISO.

### Riivolution Patch
1. Copy your ripped Suzumiya Haruhi no Heiretsu wbfs to `original/R44J8P.wbfs`, then run `setup.bat`.
2. Run `build.bat` or run `build.ps1` with the following command line arguments:
    * `-heiretsuCli` with the location of your HaruhiHeiretsuCLI executable.
    * `-wiinject` with the location of your Wiinject executable.
    * `-devkitPro` with the location of your devkitPro installation folder.
    * If creating a patched ISO, also use `-patchdol` (NOT YET IMPLEMENTED)
3. Copy the contents of the `patch` directory to your SD card root or Dolphin's `Documents\Dolphin Emulator\Load` path.
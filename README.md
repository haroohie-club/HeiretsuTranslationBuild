# Haruhi Heiretsu Translation Bootstrapping

This repository contains tools for building the translation patch for Suzumiya Haruhi no Heiretsu (The Parallel of Haruhi Suzumiya).

## Obtaining a ROM
In order to build the patch, you will require a copy of the Suzumiya Haruhi no Heiretsu ROM. Please purchase the game [here](https://www.play-asia.com/suzumiya-haruhi-no-heiretsu/13/70337j) and then
follow [these instructions](https://wiki.dolphin-emu.org/index.php?title=Ripping_Games) to rip the ROM.

## Required Tools
* [Wit](https://wit.wiimm.de/)
* [Wiinject](https://github.com/jonko0493/Wiinject)
* [HaruhiHeiretsuCLI](https://github.com/jonko0493/HaruhiHeiretsuEditor/)
* [devkitPro](https://devkitpro.org/wiki/Getting_Started)

### Environment Variables
If you'd rather not pass arguments to the PS1s, you may set the following variables:
* `%WIINJECT_PATH%` &ndash; The path to your Wiinject installation.
* `%HEIRETSU_CLI_PATH%` &ndash; The path to your HaruhiHeiretsuCLI installation.
* `%DEVKITPRO_PATH%` &ndash; The path to your devkitPro installation folder.

## Usage

The patch can either be built as a Riivolution patch or a directly patched Wii ISO.

### Riivolution Patch
1. Copy your ripped Suzumiya Haruhi no Heiretsu ISO to `original/R44J8P.iso`, then run `setup.ps1`.
2. Run `build_arc.ps1` with the following command line arguments:
    * `-heiretsuCli` with the location of your HaruhiHeiretsuCLI executable.
    * `-assetsFolder` with the location of the HeiretsuTranslationAssets folder.
    * `-fontSize` with the size of the font for replacement.
    * `-langCode` with the language code of the language you're buliding for.
2. Run `build.ps1` with the following command line arguments:
    * `-heiretsuCli` with the location of your HaruhiHeiretsuCLI executable.
    * `-wiinject` with the location of your Wiinject executable.
    * `-devkitPro` with the location of your devkitPro installation folder.
    * If creating a patched ISO, also use `-patchdol` (NOT YET IMPLEMENTED)
3. Copy the contents of the `patch` directory to your SD card root or Dolphin's `Documents\Dolphin Emulator\Load` path.
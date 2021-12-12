# Haruhi Heiretsu Translation Bootstrapping

This repository contains tools for building the Riivolution patch of Suzumiya Haruhi no Heiretsu (The Parallel of Haruhi Suzumiya).

## Required Tools
* [Wit](https://wit.wiimm.de/)
* [Wiinject](https://github.com/jonko0493/Wiinject)
* [HaruhiHeiretsuCLI](https://github.com/jonko0493/HaruhiHeiretsuEditor/)

### Environment Variables
If using the BATs rather than the PS1s, please set the following environment variables:
* `%WIINJECT_PATH%` &ndash; The path to your Wiinject installation
* `%HEIRETSU_CLI_PATH%` &ndash; The path to your HaruhiHeiretsuCLI installation

## Usage

The patch can either be built as a Riivolution patch or a directly patched Wii ISO.

### Riivolution Patch
1. Copy your ripped Suzumiya Haruhi no Heiretsu wbfs to `original/R44J8P.wbfs`, then run `setup.bat`.
2. Run `build.bat` or run `build.ps1` with the following command line arguments:
    * `-heiretsuCli` with the location of your HaruhiHeiretsuCLI executable.
    * `-wiinject` with the location of your Wiinject executable.
    * If creating a patched ISO, also use `-patchdol` (NOT YET IMPLEMENTED)
3. Copy the contents of the `patch` directory to your SD card root or Dolphin's `Documents\Dolphin Emulator\Load` path.
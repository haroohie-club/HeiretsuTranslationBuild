# Haruhi Heiretsu Translation Bootstrapping

This repository contains tools for building the Riivolution patch of Suzumiya Haruhi no Heiretsu (The Parallel of Haruhi Suzumiya).

## Required Tools
* [Wit](https://wit.wiimm.de/)
* [Wiinject](https://github.com/jonko0493/Wiinject)
* [HaruhiHeiretsuCLI](https://github.com/jonko0493/HaruhiHeiretsuEditor/)

### Environment Variables
If using the BATs rather than the PS1s, please set the following environment variables:
* `%WIINJECT_PATH%` &ndash; The path to your Wiinject installation
* `%HARUHI_HEIRETSU_PATH%` &ndash; The path to your HaruhiHeiretsuCLI installation

## Usage
1. Copy your ripped Suzumiya Haruhi no Heiretsu wbfs to `original/R44J8P.wbfs`, then run `setup.bat`.
2. Run `build_arc.bat` or run `build_arc.ps1` with the following command line arguments: _TODO_

### Riivolution Patch
3. Run `build_asm.bat` or run `build_asm.ps1` with the following command line arguments: `-wiinject` with the location of your Wiinject executable
4. Copy the contents of the `patch` directory to your SD card root or Dolphin's `Documents\Dolphin Emulator\Load` path.

### Patched ISO (NOT YET IMPLEMENTED)
3. Run `build_asm.bat` or run `build_asm.ps1` with the following command line arguments: `-wiinject` with the location of your Wiinject executable, and `-patchdol`
4. Run `build_iso.bat` or run `build_iso.ps1` with the following command line arguments: _NOT YET IMPLEMENTED_
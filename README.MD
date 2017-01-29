# extractSDImage

## Objective ##

When searching for a consistent set of tools online to easily extract say, a Raspberry Pi or BeagleBone Black image
from an SD card into a raw disk image file for distribution, the web was surprisingly empty.

The need came originally from the development of Kamikaze2 (http://github.com/goeland86/Kamikaze2) where starting
from a barebones Ubuntu image the SD card then gets the addons needed for the Kamikaze image. To then extract the
modified image in a way that can be distributed was proving haphazard and problematic.

This is an offshoot of the search for a reliable solution, which I felt deserved its own repository.

I hope this will help anyone developing custom SD or USB drive images for any embedded systems.

## PreRequisites ##

* Linux system with sudo access. (Current development is based on an Ubuntu platform, but should work elsewhere as well)
* pv
* xz
* parted
* dd
* device name for the root device (i.e. /dev/mmcblk0, not /dev/mmcblk0p1)


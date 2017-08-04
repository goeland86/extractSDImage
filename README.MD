# extractSDImage

## Objective ##

When searching for a consistent set of tools online to easily extract say, a Raspberry Pi or BeagleBone Black image
from an SD card into a raw disk image file for distribution, the web was surprisingly empty.

The need came originally from the development of Kamikaze2 (later renamed Umikaze to distinguish testing from stable images http://github.com/goeland86/Umikaze2) where starting from a barebones Ubuntu image the SD card then gets the addons needed for the Kamikaze image. To then extract the modified image in a way that can be distributed was proving haphazard and problematic.

Specifically what this script allows is that if your image has a small partition size (i.e. 1.6GB for the barebones Ubuntu we use on Kamikaze2), is that if you use an 8GB microSD card as a base, you will only extract the partition table and partition. This means that a user with a 2GB SD card can re-use the same image without complicated middle steps. While true experts would probably know how to do this easily, it became apparent that there are few people proposing easy, scripted solutions that work first time, every time.

This is an offshoot of the search for a reliable solution, which I felt deserved its own project as it can be improved to help anyone building an image, be it for a Raspberry Pi, BeagleBone or other embedded devices where there is a need to clone the original 

I hope this will help anyone developing custom SD or USB drive images for any embedded systems.

## PreRequisites ##

* Linux system with sudo access. (Current development is based on an Ubuntu platform, but should work elsewhere as well)
* pv
* xz
* parted
* dd
* device name for the root device (i.e. /dev/mmcblk0, not /dev/mmcblk0p1)


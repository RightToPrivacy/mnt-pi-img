#!/bin/bash
#
# Mount Raspberry Pi image for editing files
# Many seem to have trouble doing so
# [More to add in updates]
#
# <righttoprivacy[at]tutanota.com>
# BLOG/VIDEOS: https://www.buymeacoffee.com/politictech/posts
#

loop='loop1'
imgname=' '
mntpoint='/mnt'
read -p 'Image Name/location: ' imgname
read -p 'Mount point (dir/location): ' mntpoint
losetup -P /dev/loop0 $imgname
mount /dev/loop0p2 $mntpoint
mount /dev/loop0p1 $mntpoint/boot

echo 'Mounted devices/locations: '
df

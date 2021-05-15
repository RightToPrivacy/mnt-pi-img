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
read -p 'Image Name/location: ' $imgname
read -p 'Mount point (location): ' $mntpoint
losetup -P $loop $imgname $mntpoint

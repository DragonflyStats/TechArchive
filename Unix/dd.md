dd is a command-line utility for Unix and Unix-like operating systems whose primary purpose is to convert and copy files.


blocks=$(isosize -d 2048 /dev/sr0)
dd if=/dev/sr0 of=isoimage.iso bs=2048 count=$blocks status=progress

	Creates an ISO disk image from a CD-ROM, DVD or Blu-ray disk.[7]

dd if=system.img of=/dev/sdc bs=4096 conv=noerror

	Restores a hard disk drive (or an SD card, for example) from a previously created image.

dd if=/dev/sda2 of=/dev/sdb2 bs=4096 conv=noerror

	Clones one partition to another.

dd if=/dev/ad0 of=/dev/ad1 bs=1M conv=noerror

	Clones a hard disk drive "ad0" to "ad1".

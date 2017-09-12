#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:24335694:c738e4dfa804748cc1edd112e4ac3900b5a94752; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23213386:80a785275c30af106c1dd42a49fc8ba285a1b866 EMMC:/dev/block/bootdevice/by-name/recovery c738e4dfa804748cc1edd112e4ac3900b5a94752 24335694 80a785275c30af106c1dd42a49fc8ba285a1b866:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

if [ ! -d "/firmware/image" ]; then
  mkdir /firmware2
  if [ ! -d "/firmware" ]; then
    mkdir /firmware
  fi
  mkdir /firmware/image
  mount /dev/mmcblk0p1 /firmware2
  cp /firmware2/image/* /firmware/image/
  cd /firmware/image
  gunzip *.gz
  umount /firmware2
fi

#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

#Dependencies
yum install python
easy_install pyusb

cp usbnetpower8800.py /bin/power
chmod a+x /bin/power
cp 50-usbnetpower.rules /etc/udev/rules.d/

echo "Need to reboot now"

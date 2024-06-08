#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ ! -f /etc/udev/rules.d/99-realsense-libusb.rules ]; then
    echo "UDEV rules for RealSense cameras are not set up on host. Will proceed to do so now, sudo password will be required for this action."
    echo "The udev rules makes sure that permissions are set correctly."
    echo
    sudo cp $SCRIPT_DIR/99-realsense-libusb.rules /etc/udev/rules.d/99-realsense-libusb.rules
    echo
    echo "To undo simply type \"sudo rm /etc/udev/rules.d/99-realsense-libusb.rules\""
    echo
    echo "In case this script fails, unplug camera, plug back in and try again."
    sudo udevadm control --reload-rules && udevadm trigger
else
    echo "udev rules already in place."
fi

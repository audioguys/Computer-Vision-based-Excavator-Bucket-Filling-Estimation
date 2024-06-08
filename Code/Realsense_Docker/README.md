# REALSENSE ROS DOCKER

Containerization of librealsense and the corresponding ROS wrapper.

## What's in here?

This package the necessary files to utilize the MRT GitLab CI to build a docker image containing the realsense camera driver and ROS wrapper.

## Usage

### Preparation

This has to be done once on the host computer:
- Install the udev rules using the povided script: `./install_udev_rules.sh`

## Start the container

Take a look at the run.sh script for an example usage.
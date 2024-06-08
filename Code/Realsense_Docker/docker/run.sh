#!/bin/bash

docker run \
    --privileged \
    --name realsense \
    --net=host \
    --rm \
    gitlab.mrt.kit.edu:21443/mrt/private/lelarge/kal/realsense_ros_docker:latest "$@"

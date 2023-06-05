FROM ros:noetic-ros-core

USER root
SHELL ["/bin/bash", "-c"]

# Update and install camera driver
RUN apt update && \
    apt upgrade -y && \
    apt install --no-install-recommends -y \
    ros-noetic-realsense2-camera && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd --create-home --shell /bin/bash developer

USER developer

WORKDIR /home/developer
ENTRYPOINT ["/ros_entrypoint.sh" ]
CMD ["roslaunch", "realsense2_camera", "rs_camera.launch"]

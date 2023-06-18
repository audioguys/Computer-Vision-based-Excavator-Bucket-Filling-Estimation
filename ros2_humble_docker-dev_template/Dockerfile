FROM osrf/ros:humble-desktop-full

ARG WORKSPACE=humble_dev_ws
#setup envvironment
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
ENV QT_X11_NO_MITSHM=1
ENV EDITOR=nano
ENV XDG_RUNTIME_DIR=/tmp
# Install dependencies
RUN apt-get update && apt-get install -y \
    ros-humble-serial \
    ros-humble-xacro \
    ros-humble-ros2bag \
    ros-humble-ros2bag-storage-default-plugins \
    ros-humble-usb-cam\
    ros-humble-rqt-tf-tree\
    ros-humble-joint-state-publisher\
    rviz \
    git \
    python3-serial 

# Setup ROS environment
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc && 


RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
# Build

#docker run --privileged --device=/dev/ttyUSB0 -it your_image_name bash

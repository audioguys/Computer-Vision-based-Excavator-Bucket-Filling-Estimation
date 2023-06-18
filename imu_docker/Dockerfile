FROM osrf/ros:melodic-desktop-full-bionic

# Install dependencies
RUN apt-get update && apt-get install -y \
    ros-melodic-serial \
    ros-melodic-velodyne \
    ros-melodic-cartographer \
    ros-melodic-cartographer-ros \
    git \
    python3-serial 

# Setup ROS environment
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc && \
    mkdir -p ~/catkin_ws/src

# Copy source files
WORKDIR /root/catkin_ws/src

# Build
WORKDIR /root/catkin_ws
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_make' && \
    echo "source /root/catkin_ws/devel/setup.bash" >> ~/.bashrc
#docker run --privileged --device=/dev/ttyUSB0 -it your_image_name bash

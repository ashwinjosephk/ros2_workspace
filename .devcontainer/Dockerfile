ARG ROS_DISTRO=jazzy
ARG ROS_VARIANT=full
FROM althack/ros2:${ROS_DISTRO}-${ROS_VARIANT}

# Install desktop and VNC packages
RUN apt-get update && apt-get install -y \
    xvfb \
    x11vnc \
    novnc \
    websockify \
    xfce4 \
    xfce4-goodies \
    dbus-x11 \
    && rm -rf /var/lib/apt/lists/*

# Install ROS 2 course dependencies
RUN apt-get update && apt-get install -y \
    ros-jazzy-moveit \
    ros-jazzy-ros2-control \
    ros-jazzy-ros2-controllers \
    ros-jazzy-gz-ros2-control \
    ros-jazzy-xacro \
    ros-jazzy-joint-state-publisher-gui \
    ros-jazzy-joint-state-publisher \
    ros-jazzy-robot-state-publisher \
    ros-jazzy-rviz2 \
    && rm -rf /var/lib/apt/lists/*

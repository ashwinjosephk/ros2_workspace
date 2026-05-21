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
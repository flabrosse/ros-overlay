# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The gazebo_video_monitor_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nlamprian/${PN}-release/archive/release/noetic/${PN}/0.5.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_ros
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/std_srvs
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

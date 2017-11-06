# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Bindings and lowlevel controllers for ArbotiXpowered robots"
HOMEPAGE="http://ros.org/wiki/arbotix_python"
SRC_URI="https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/indigo/arbotix_python/0.10.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/arbotix_msgs
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/tf
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


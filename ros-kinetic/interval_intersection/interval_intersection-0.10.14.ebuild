# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tools for calculating the intersection of interval messages coming	in on sev"
HOMEPAGE="http://www.ros.org/wiki/interval_intersection"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/kinetic/interval_intersection/0.10.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/calibration_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/roscpp_serialization
	ros-kinetic/rostime
	ros-kinetic/std_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


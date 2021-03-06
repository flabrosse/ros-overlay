# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/jlack/${PN}_release/repository/archive.tar.gz?ref=release/melodic/${PN}/3.2.0-1 -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rdl_benchmark
	ros-melodic/rdl_cmake
	ros-melodic/rdl_dynamics
	ros-melodic/rdl_msgs
	ros-melodic/rdl_ros_tools
	ros-melodic/rdl_urdfreader
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

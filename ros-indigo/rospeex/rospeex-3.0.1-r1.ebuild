# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://bitbucket.org/rospeex/rospeex-release/get/release/indigo/rospeex/3.0.1-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rospeex_audiomonitor
	ros-indigo/rospeex_core
	ros-indigo/rospeex_if
	ros-indigo/rospeex_launch
	ros-indigo/rospeex_msgs
	ros-indigo/rospeex_samples
	ros-indigo/rospeex_webaudiomonitor
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


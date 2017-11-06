# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="urdf models converted from euslisp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_model_tools-release/archive/release/indigo/eusurdf/0.3.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/collada_urdf_jsk_patch
	ros-indigo/gazebo_ros
	ros-indigo/rostest
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roseus
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


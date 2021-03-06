# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="gundam_rx78_description contains the ROS URDF file of the GUNDAM RX-78 robot"
HOMEPAGE="http://wiki.ros.org/gundam_rx78_description"
SRC_URI="https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/kinetic/${PN}/0.0.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( TERMS OF USE FOR GUNDAM RESEARCH OPEN SIMULATOR Attribution-NonCommercial-ShareAlike BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files and world files to start the models in gazebo"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/indigo/summit_x_gazebo/1.0.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/summit_x_control
	ros-indigo/summit_x_description
	ros-indigo/summit_x_robot_control
	ros-indigo/tf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver for the Phidgets Digital Output devices"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/${PN}/2.0.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/launch
	ros-eloquent/phidgets_api
	ros-eloquent/phidgets_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/std_msgs
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

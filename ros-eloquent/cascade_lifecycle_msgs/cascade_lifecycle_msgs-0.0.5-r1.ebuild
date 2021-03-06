# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Messages for rclcpp_cascade_lifecycle package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fmrico/cascade_lifecycle-release/archive/release/eloquent/${PN}/0.0.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/lifecycle_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rosidl_default_generators
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

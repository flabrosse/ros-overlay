# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="include\
		This package provides an implementation of a 3D costmap th[...]"
HOMEPAGE="http://wiki.ros.org/non-persisent-voxel-layer"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/noetic/${PN}/1.2.3-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/laser_geometry
	ros-noetic/map_msgs
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/pluginlib
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/visualization_msgs
	ros-noetic/voxel_grid
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="USB Video Class camera driver"
HOMEPAGE="http://ros.org/wiki/libuvc_camera"
SRC_URI="https://github.com/ktossell/libuvc_ros-release/archive/release/indigo/libuvc_camera/0.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/libuvc
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


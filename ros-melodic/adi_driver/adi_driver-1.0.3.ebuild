# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The adi_driver package"
HOMEPAGE="http://wiki.ros.org/adi_driver"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/1.0.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/imu_filter_madgwick
	ros-melodic/roscpp
	ros-melodic/rqt_plot
	ros-melodic/rviz
	ros-melodic/rviz_imu_plugin
	ros-melodic/sensor_msgs
	ros-melodic/std_srvs
	ros-melodic/xacro
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

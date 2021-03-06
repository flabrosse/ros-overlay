# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for running  <a href=\"http://ros.org/wi[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation_slam"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/melodic/${PN}/0.6.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cob_mapping_slam
	ros-melodic/cob_navigation_config
	ros-melodic/cob_navigation_global
	ros-melodic/rviz
	test? ( ros-melodic/cob_supported_robots )
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

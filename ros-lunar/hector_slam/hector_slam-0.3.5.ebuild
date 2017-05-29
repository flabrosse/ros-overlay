# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The hector_slam metapackage that installs hector_mapping and related packages."
HOMEPAGE="http://ros.org/wiki/hector_slam"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_slam/0.3.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
	ros-lunar/hector_marker_drawing
	ros-lunar/hector_map_tools
	ros-lunar/hector_map_server
	ros-lunar/hector_nav_msgs
	ros-lunar/hector_geotiff_plugins
	ros-lunar/hector_mapping
	ros-lunar/hector_imu_attitude_to_tf
	ros-lunar/hector_trajectory_server
	ros-lunar/hector_compressed_map_transport
	ros-lunar/hector_geotiff
	ros-lunar/hector_slam_launch
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
	wget -O ${P}.tar.gz ${SRC_URI}
	tar -xf ${P}.tar.gz
	rm -f ${P}.tar.gz
	mv *${P}* ${P}
}

src_configure() {
	mkdir ${WORKDIR}/src
	cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
	echo ""
}

src_install() {
	cd ../../work
	source /opt/ros/lunar/setup.bash
	catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
	rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
	rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code."
HOMEPAGE="http://ros.org/wiki/roswtf"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roswtf/1.12.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roslaunch
    ros-kinetic/rosbuild
    ros-kinetic/roslib
    ros-kinetic/rosgraph
    ros-kinetic/rosservice
    ros-kinetic/rosnode
    dev-python/rospkg
    dev-python/paramiko
"
DEPEND="${RDEPEND}
    ros-kinetic/rostest
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
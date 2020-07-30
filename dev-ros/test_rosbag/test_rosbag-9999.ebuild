# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ROS_REPO_URI="https://github.com/ros/ros_comm"
KEYWORDS="~amd64 ~arm"
ROS_SUBDIR=test/${PN}
CATKIN_HAS_MESSAGES=yes
CATKIN_MESSAGES_TRANSITIVE_DEPS="dev-ros/rosgraph_msgs dev-ros/std_msgs"

inherit ros-catkin

DESCRIPTION="Unit tests for rosbag"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	dev-ros/message_generation
	dev-ros/rosbag[${PYTHON_SINGLE_USEDEP}]
	dev-ros/rosconsole
	dev-ros/roscpp
	dev-ros/rostest[${PYTHON_SINGLE_USEDEP}]
	dev-ros/rosunit[${PYTHON_SINGLE_USEDEP}]
	dev-ros/topic_tools[${PYTHON_SINGLE_USEDEP}]
	dev-ros/xmlrpcpp
"
DEPEND="${RDEPEND}
	test? (
		dev-libs/boost[threads]
		app-arch/bzip2
		dev-ros/rosout
		$(python_gen_cond_dep "dev-python/nose[\${PYTHON_USEDEP}]")
		dev-ros/rostest[${PYTHON_SINGLE_USEDEP}]
		dev-cpp/gtest
	)
"

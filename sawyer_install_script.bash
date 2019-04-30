#!/bin/bash
echo "Enter the name of the directory of your new catkin workspace ~/"
read loc
echo $loc
mkdir -p ~/$loc/src
source /opt/ros/kinetic/setup.bash
cd ~/$loc
catkin_make
sudo apt-get update
sudo apt-get install git-core python-argparse python-wstool python-vcstools python-rosdep ros-kinetic-control-msgs ros-kinetic-joystick-drivers ros-kinetic-xacro ros-kinetic-tf2-ros ros-kinetic-rviz ros-kinetic-cv-bridge ros-kinetic-actionlib ros-kinetic-actionlib-msgs ros-kinetic-dynamic-reconfigure ros-kinetic-trajectory-msgs ros-kinetic-rospy-message-converter
cd ~/$loc/src
wstool init .
git clone https://github.com/michaelsimmons94/sawyer_robot.git
wstool merge sawyer_robot/sawyer_robot.rosinstall
wstool update
source /opt/ros/kinetic/setup.bash
cd ~/$loc
catkin_make
cp ~/$loc/src/intera_sdk/intera.sh ~/$loc
cd ~/$loc
sed -i '0,/indigo/s//kinetic/' ~/$loc/intera.sh
sed -i '0,/indigo/s//kinetic/' ~/$loc/intera.sh
sed -i '0,/robot_hostname.local/s//sawyer.local/' ~/$loc/intera.sh
IP_ADDR="$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')"
sed -i "0,/192.168.XXX.XXX/s//$IP_ADDR/" ~/$loc/intera.sh
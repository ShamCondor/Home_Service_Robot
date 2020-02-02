#!/bin/bash

cd /home/sfy/robotdevelop/project/mine/Home_Service_Robot; 
source /home/sfy/robotdevelop/project/mine/Home_Service_Robot/devel/setup.bash;
export TURTLEBOT_GAZEBO_WORLD_FILE=/home/sfy/robotdevelop/project/mine/Home_Service_Robot/src/map/nancys_world.world

xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm -e "roslaunch turtlebot_teleop keyboard_teleop.launch" &

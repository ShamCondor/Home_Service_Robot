#!/bin/bash

killall gazebo
killall gzserver
killall gzclient

cd /home/sfy/robotdevelop/project/mine/Home_Service_Robot; 
source /home/sfy/robotdevelop/project/mine/Home_Service_Robot/devel/setup.bash;
export TURTLEBOT_GAZEBO_WORLD_FILE=/home/sfy/robotdevelop/project/mine/Home_Service_Robot/src/map/nancys_world.world
export TURTLEBOT_GAZEBO_MAP_FILE=/home/sfy/robotdevelop/project/mine/Home_Service_Robot/src/map/nancys_map.yaml
export RVIZ_CONFIG=/home/sfy/robotdevelop/project/mine/Home_Service_Robot/src/rvizConfig/navigation.rviz

xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e "rosrun rviz rviz -d $RVIZ_CONFIG" &
sleep 5
xterm -e "rosrun add_markers add_markers" &
xterm -e "rosrun pick_objects pick_objects" &

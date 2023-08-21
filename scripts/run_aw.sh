#!/bin/bash

export RCUTILS_COLORIZED_OUTPUT=1
export ROS_DOMAIN_ID=$1

source /home/yuasabe/workspace/autoware_docker/install/setup.bash

# ros2 launch autoware_launch e2e_simulator.launch.xml map_path:=/home/yuasabe/data/maps/kashiwa_awsim vehicle_model:=sample_vehicle sensor_model:=awsim_sensor_kit
ros2 launch autoware_launch autoware_mini.launch.xml map_path:=/home/yuasabe/data/maps/kashiwa_awsim vehicle_model:=sample_vehicle sensor_model:=awsim_sensor_kit

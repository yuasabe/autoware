#!/bin/bash

# ros2 service call /api/localization/initialize autoware_adapi_v1_msgs/srv/InitializeLocalization

export ROS_DOMAIN_ID=1
sleep 5
ros2 service call /api/localization/initialize autoware_adapi_v1_msgs/srv/InitializeLocalization

export ROS_DOMAIN_ID=2
sleep 5
ros2 service call /api/localization/initialize autoware_adapi_v1_msgs/srv/InitializeLocalization

export ROS_DOMAIN_ID=3
sleep 5
ros2 service call /api/localization/initialize autoware_adapi_v1_msgs/srv/InitializeLocalization

export ROS_DOMAIN_ID=4
sleep 5
ros2 service call /api/localization/initialize autoware_adapi_v1_msgs/srv/InitializeLocalization

export ROS_DOMAIN_ID=10

sleep 5

ros2 topic pub /planning/mission_planning/goal geometry_msgs/msg/PoseStamped "header:
  stamp:
    sec: 115
    nanosec: 489997418
  frame_id: map
pose:
  position:
    x: 3749.510498046875
    y: 73770.8828125
    z: 0.0
  orientation:
    x: 0.0
    y: 0.0
    z: 0.8461463307978236
    w: 0.5329506420648914
" -1

ros2 topic pub /planning/scenario_planning/max_velocity_default tier4_planning_msgs/msg/VelocityLimit "stamp:
  sec: 0
  nanosec: 0
max_velocity: 1.3888888359069824
use_constraints: false
constraints:
  min_acceleration: 0.0
  max_jerk: 0.0
  min_jerk: 0.0
sender: ''" -1

ros2 topic pub /autoware/engage autoware_auto_vehicle_msgs/msg/Engage 'engage: true' -1

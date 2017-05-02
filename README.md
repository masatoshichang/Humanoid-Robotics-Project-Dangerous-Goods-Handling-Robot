# Dangerous Goods Handling Robot

## Basic Robot Setup
### Load Gazebo
`roslaunch fetch_control playground.launch`

### Start Robot Movement, OpenCV, Point Cloud Library, etc
`roslaunch fetch_control start_robot.launch`


## Grasp Planning
### Start Required Libaries for Grasping
`roslaunch fetch_control grasp.launch`

## Perform Grasp Planning Test
`python graspit_test.py`

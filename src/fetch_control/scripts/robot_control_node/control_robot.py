#!/usr/bin/env python

import rospy

# from fetch_control.robot_control_node import demo
from demo import *



class ControlRobot(object):

    def __init__(self):
        # Setup clients
        self.move_base = MoveBaseClient()
        self.torso_action = FollowTrajectoryClient("torso_controller", ["torso_lift_joint"])
        self.head_action = PointHeadClient()
        self.grasping_client = GraspingClient()

    def goto_table1(self):
        rospy.loginfo("Moving to table..." * 100)
        self.move_base.goto(4.3, 0, 0.0)

    def lookat_table1_label(self):
        rospy.loginfo("Looking at label")
        self.head_action.look_at(5, 0, 0.5, "head_pan_link")

    def lookat_table1(self):
        rospy.loginfo("Looking")
        self.head_action.look_at(1.5, 0, 0.0, "base_link")


    def check_cube_point_cloud(self):
        rospy.wait_for_service('can_see_cube')
        try:
            print('Getting from Point Cloud')
            can_see_cube = rospy.ServiceProxy('can_see_cube', CanSeeCube)
            result = can_see_cube()
            print(result)
        except rospy.ServiceException, e:
            print("Service call failed: ", e)

    def move_torso(self, amount):
        self.torso_action.move_to([amount, ])

    def pickup_cube(self):
        self.head_action.look_at(1.0, 0, 0.0, "base_link")

        # Get block to pick
        while not rospy.is_shutdown():
            rospy.loginfo("Picking object...")
            self.grasping_client.updateScene()
            cube, grasps = self.grasping_client.getGraspableCube()
            if cube == None:
                rospy.logwarn("Perception failed.")
                continue

            # Pick the block
            if self.grasping_client.pick(cube, grasps):
                break
            rospy.logwarn("Grasping failed.")

        # Tuck the arm
        self.grasping_client.tuck()

        return cube

    def goto_container1(self):
        rospy.loginfo("Going to container")
        self.move_base.goto(-2, 0, 0)
        rospy.loginfo("Approaching container")
        self.move_base.goto(-4.1, 0, 0)

    def place_object(self, cube):
        # Place the block
        while not rospy.is_shutdown():
            rospy.loginfo("Placing object...")
            pose = PoseStamped()
            pose.pose = cube.primitive_poses[0]
            pose.pose.position.z += 0.05
            pose.header.frame_id = cube.header.frame_id
            if self.grasping_client.place(cube, pose):
                break
            rospy.logwarn("Placing failed.")

        # Tuck the arm, lower the torso
        self.grasping_client.tuck()
        self.torso_action.move_to([0.0, ])





if __name__ == "__main__":
    # Create a node
    rospy.init_node("demo")

    # Make sure sim time is working
    while not rospy.Time.now():
        pass

    control_robot = ControlRobot()

    control_robot.goto_table1()
    control_robot.lookat_table1_label()
    control_robot.lookat_table1()
    control_robot.check_cube_point_cloud()

    control_robot.move_torso(0.4)

    cube = control_robot.pickup_cube()

    # Lower torso
    rospy.loginfo("Lowering torso...")
    control_robot.move_torso(0.0)

    control_robot.goto_container1()
    rospy.loginfo("Approaching container")
    control_robot.move_torso(0.5)


    control_robot.place_object(cube)





    """
    # Move to second table
    rospy.loginfo("Moving to second table...")
    move_base.goto(-3.53, 3.75, 1.57)
    move_base.goto(-3.53, 4.15, 1.57)

    # Raise the torso using just a controller
    rospy.loginfo("Raising torso...")
    torso_action.move_to([0.4, ])
    """

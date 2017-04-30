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



    def lookat_table1_label(self):
        rospy.loginfo("Looking at label")
        self.head_action.look_at(5, 0, 0.5, "head_pan_link")

    def lookat_table1(self):
        rospy.loginfo("Looking")
        self.head_action.look_at(1.5, 0, 0.0, "head_pan_link")


    def lookat_cube(self):
        rospy.loginfo('Looking at cube')
        self.head_action.look_at(0.0, 0, -1.5, "head_pan_link")


    def lookat_left_down(self):
        rospy.loginfo('Looking at left down')
        self.head_action.look_at(1.0, 0.5, 0.0, "base_link")


    def lookat_gripper(self):
        rospy.loginfo('Looking at gripper')
        self.head_action.look_at(0.0, -0.127, 0, "base_link")

    def lookat_forward(self):
        rospy.loginfo('Looking at forward')
        self.head_action.look_at(100, 0, 0, "base_link")


    def lookat_down_high(self):
        rospy.loginfo('Looking at down high')
        self.head_action.look_at(0.5, 0, 1.4245/2, "base_link")

    def lookat_down_left_high(self):
        rospy.loginfo('Looking at down left high')
        self.head_action.look_at(0.5, 0.2, 1.4245/2, "base_link")

    def lookat_down_right_high(self):
        rospy.loginfo('Looking at down right high')
        self.head_action.look_at(0.5, -0.2, 1.4245/2, "base_link")

    def lookat_test(self):
        rospy.loginfo('Looking at test')
        self.head_action.look_at(0.5, 0, 1.4245/2, "base_link")


    def check_cube_point_cloud(self):
        rospy.wait_for_service('can_see_cube')
        try:
            print('Getting from Point Cloud')
            can_see_cube = rospy.ServiceProxy('can_see_cube', CanSeeCube)
            result = can_see_cube()
            print(result)
        except rospy.ServiceException, e:
            print("Service call failed: ", e)
            return False

        if result > 100:
            return True
        return False


    def move_torso(self, amount):
        self.torso_action.move_to([amount, ])

    def pickup_cube(self):
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
        # self.move_base.goto(-2, 0, 3.14)
        rospy.loginfo("Approaching container")
        self.move_base.goto(-2.1, 0, 3.14)

    def goto_table1(self):
        rospy.loginfo("Moving to table..." * 100)
        self.move_base.goto(2.1, 0, 0)

    def goto_table2(self):
        rospy.loginfo("Going to table 2")
        self.move_base.goto(0, 1.9, 1.5707)

    def goto_origin_face_south(self):
        rospy.loginfo("Going to origin facing south")
        self.move_base.goto(0, 0, 3.14)


    def place_object(self, cube):
        # Place the block
        while not rospy.is_shutdown():
            rospy.loginfo("Placing object...")
            pose = PoseStamped()
            rospy.loginfo('Cube primitive:')
            rospy.loginfo(cube.primitive_poses[0])
            rospy.loginfo(dir(cube.primitive_poses[0]))


            pose.pose = cube.primitive_poses[0]
            pose.pose.position.z += 0.5
            pose.header.frame_id = cube.header.frame_id
            if self.grasping_client.place(cube, pose):
                break
            rospy.logwarn("Placing failed.")

        # Tuck the arm, lower the torso
        self.grasping_client.tuck()
        self.torso_action.move_to([0.0, ])

    def is_holding_cube(self):
        self.lookat_gripper()
        return self.check_cube_point_cloud()






if __name__ == "__main__":
    # Create a node
    rospy.init_node("demo")

    # Make sure sim time is working
    while not rospy.Time.now():
        pass

    control_robot = ControlRobot()
    control_robot.lookat_forward()


    """
    control_robot.move_torso(0.4)

    control_robot.lookat_gripper()


    exit()

    #control_robot.lookat_test()

    #exit()
    """

    """


    control_robot.move_torso(0.4)
    #control_robot.lookat_table1_label()
    control_robot.lookat_cube()

    #control_robot.lookat_left_down()



    exit()
    """

    control_robot.goto_table1()
    # control_robot.lookat_table1_label()
    control_robot.lookat_forward()
    #control_robot.lookat_down_high()
    # control_robot.lookat_table1()
    control_robot.check_cube_point_cloud()

    """
    control_robot.move_torso(0.4)
    # control_robot.lookat_cube()
    control_robot.lookat_down_high()


    picked_up_cube = False
    if control_robot.check_cube_point_cloud() and not picked_up_cube:
        cube = control_robot.pickup_cube()
        control_robot.lookat_gripper()
        if control_robot.is_holding_cube():
            picked_up_cube = True
            rospy.loginfo("Picked up cube")

    control_robot.lookat_down_left_high()
    if control_robot.check_cube_point_cloud() and not picked_up_cube:
        picked_up_cube = True
        cube = control_robot.pickup_cube()

    control_robot.lookat_down_right_high()
    if control_robot.check_cube_point_cloud() and not picked_up_cube:
        picked_up_cube = True
        cube = control_robot.pickup_cube()

    control_robot.lookat_down_high()
    """
    control_robot.lookat_forward()



    # Lower torso
    rospy.loginfo("Lowering torso...")
    control_robot.move_torso(0.0)

    control_robot.goto_origin_face_south()


    control_robot.goto_table2()


    control_robot.goto_origin_face_south()


    control_robot.goto_container1()
    rospy.loginfo("Approaching container")
    control_robot.move_torso(1)


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

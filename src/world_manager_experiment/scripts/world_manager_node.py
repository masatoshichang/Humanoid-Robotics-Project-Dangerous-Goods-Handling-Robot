#!/usr/bin/env python
import os
import time
import sys
# import ipdb

import roslib
import rospy
import moveit_commander
import tf
import actionlib
import tf.transformations

import geometry_msgs.msg
from std_srvs.srv import Empty
import moveit_msgs
from moveit_msgs.msg import PlanningSceneComponents
import moveit_msgs.srv
from graspit_msgs.srv import *
import graspit_msgs.msg

from moveit_commander import PlanningSceneInterface
from model_manager import ModelPoseBroadcaster


class WorldManager:

    def __init__(self):

        moveit_commander.roscpp_initialize(sys.argv)

        self.scene = PlanningSceneInterface()

        self.model_pose_broadcaster = ModelPoseBroadcaster()

        # self.clear_planning_scene_service = rospy.Service("/world_manager/clear_planning_scene", graspit_msgs.srv.ClearModels, self.remove_all_objects_from_planner)
        self.add_mesh_to_planning_scene_service = rospy.Service("/world_manager/add_object", graspit_msgs.srv.AddObject, self.add_object_to_planning_scene)

        rospy.sleep(1.0)
        # self.add_walls()
        rospy.loginfo("World Manager Node is Up and Running")

    def add_object_to_planning_scene(self, request):
        self.remove_all_objects_from_planner(None)
        #this makes sure tf is continually broadcast
        self.model_pose_broadcaster.add_model(request.objectname, request.pose_stamped)

        #remove the old completion if it is there
        self.scene.remove_world_object(request.objectname)

        #add the new object to the planning scene
        self.scene.add_mesh(request.objectname, request.pose_stamped, request.mesh_filepath)
        return []


    def remove_all_objects_from_planner(self, request):

        body_names = self.scene.get_known_object_names()

        while len(body_names) > 0:
            print("removing bodies from the planner, this can potentially take several tries")
            for body_name in body_names:
                self.scene.remove_world_object(body_name)
            body_names = self.scene.get_known_object_names()

        self.model_pose_broadcaster.clear_models()

        # self.add_walls()
        return []

    def add_walls(self):
        walls = rospy.get_param('/walls')
        for wall_params in walls:
            rospy.loginfo("Adding wall " + str(wall_params))
            self.add_wall(wall_params)

    def add_wall(self, wall_params):
        name = wall_params["name"]
        x_thickness = wall_params["x_thickness"]
        y_thickness = wall_params["y_thickness"]
        z_thickness = wall_params["z_thickness"]
        x = wall_params["x"]
        y = wall_params["y"]
        z = wall_params["z"]
        qx = wall_params["qx"]
        qy = wall_params["qy"]
        qz = wall_params["qz"]
        qw = wall_params["qw"]
        frame_id = wall_params["frame_id"]

        back_wall_pose = geometry_msgs.msg.PoseStamped()
        back_wall_pose.header.frame_id = '/' + frame_id
        wall_dimensions = [x_thickness, y_thickness,  z_thickness]

        back_wall_pose.pose.position = geometry_msgs.msg.Point(**{'x': x, 'y': y, 'z': z})
        back_wall_pose.pose.orientation = geometry_msgs.msg.Quaternion(**{'x': qx,
                                                                          'y': qy,
                                                                          'z': qz,
                                                                          'w': qw})
        self.scene.add_box(name, back_wall_pose, wall_dimensions)


if __name__ == '__main__':

    try:

        rospy.init_node('world_manager_node')

        rospy.loginfo("Starting Up World Manager")
        world_manager = WorldManager()

        rospy.loginfo("World Manager Has Started")

        loop = rospy.Rate(30)
        while not rospy.is_shutdown():
            world_manager.model_pose_broadcaster.broadcast_object_tfs()
            loop.sleep()

    except rospy.ROSInterruptException:
        pass

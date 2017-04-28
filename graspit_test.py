import grasp_execution
import grasp_execution_node

from graspit_commander import GraspitCommander
import graspit_msgs.msg
import geometry_msgs
import actionlib

GraspitCommander.loadWorld("test_grasp")
grasp_output = GraspitCommander.planGrasps(max_steps=50000)

print(grasp_output)

unchecked_for_reachability_grasps = grasp_output.grasps

print('analyze_grasp_action')
reachability_client = actionlib.SimpleActionClient('analyze_grasp_action', graspit_msgs.msg.CheckGraspReachabilityAction)
reachability_client.wait_for_server()
print('analyze_grasp_action done')


for i, unchecked_grasp in enumerate(unchecked_for_reachability_grasps):
        rospy.loginfo("checking grasps for reachability")

        grasp = graspit_msgs.msg.Grasp()
        grasp.grasp_id = i

        grasp.object_name = model_name
        pre_grasp_pose = geometry_msgs.msg.Pose()
        pre_grasp_pose.position = unchecked_grasp.pose.position
        pre_grasp_pose.orientation = unchecked_grasp.pose.orientation
        grasp.pre_grasp_pose = pre_grasp_pose

        final_grasp_pose = geometry_msgs.msg.Pose()
        final_grasp_pose.position = unchecked_grasp.pose.position
        final_grasp_pose.orientation = unchecked_grasp.pose.orientation
        #print "here mf: \n\n\n\n\n\n\n\n" + str(final_grasp_pose.position.x)
        #final_grasp_pose.position.x = tmp/50.0
        grasp.final_grasp_pose = final_grasp_pose

        grasp.pre_grasp_dof = [0.09] #Maximum cm the gripper can open #copy in from graspit commander
        grasp.final_grasp_dof = unchecked_grasp.dofs #have the gripper close all the way for now

        #this is the message we are sending to reachability analyzer to check for reachability
        goal = graspit_msgs.msg.CheckGraspReachabilityGoal()
        goal.grasp = grasp

        reachability_client.send_goal(goal)
        reachability_client.wait_for_result()

        reachability_check_result = reachability_client.get_result()

        if reachability_check_result.isPossible:
            reachable_grasps.append(grasp)

if len(reachable_grasps):
    rospy.loginfo("going to execute first reachable grasp")
    execution_client = actionlib.SimpleActionClient('grasp_execution_action', graspit_msgs.msg.GraspExecutionAction)
    execution_client.wait_for_server()

    goal = graspit_msgs.msg.GraspExecutionGoal()
    goal.grasp = reachable_grasps[0]

    execution_client.send_goal(goal)
    execution_client.wait_for_result()


"""
import IPython
IPython.embed()
"""

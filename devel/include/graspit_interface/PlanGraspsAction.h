// Generated by gencpp from file graspit_interface/PlanGraspsAction.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_PLANGRASPSACTION_H
#define GRASPIT_INTERFACE_MESSAGE_PLANGRASPSACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <graspit_interface/PlanGraspsActionGoal.h>
#include <graspit_interface/PlanGraspsActionResult.h>
#include <graspit_interface/PlanGraspsActionFeedback.h>

namespace graspit_interface
{
template <class ContainerAllocator>
struct PlanGraspsAction_
{
  typedef PlanGraspsAction_<ContainerAllocator> Type;

  PlanGraspsAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  PlanGraspsAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::graspit_interface::PlanGraspsActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::graspit_interface::PlanGraspsActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::graspit_interface::PlanGraspsActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;




  typedef boost::shared_ptr< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> const> ConstPtr;

}; // struct PlanGraspsAction_

typedef ::graspit_interface::PlanGraspsAction_<std::allocator<void> > PlanGraspsAction;

typedef boost::shared_ptr< ::graspit_interface::PlanGraspsAction > PlanGraspsActionPtr;
typedef boost::shared_ptr< ::graspit_interface::PlanGraspsAction const> PlanGraspsActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_interface::PlanGraspsAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graspit_interface

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'graspit_interface': ['/home/masatoshichang/robotics/fetch_ws/src/graspit_interface/msg', '/home/masatoshichang/robotics/fetch_ws/devel/share/graspit_interface/msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "205f9c3b4968ce070014e4b0c71be13c";
  }

  static const char* value(const ::graspit_interface::PlanGraspsAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x205f9c3b4968ce07ULL;
  static const uint64_t static_value2 = 0x0014e4b0c71be13cULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_interface/PlanGraspsAction";
  }

  static const char* value(const ::graspit_interface::PlanGraspsAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
PlanGraspsActionGoal action_goal\n\
PlanGraspsActionResult action_result\n\
PlanGraspsActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: graspit_interface/PlanGraspsActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
PlanGraspsGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: graspit_interface/PlanGraspsGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Goal\n\
int32 graspable_body_id\n\
\n\
Planner planner\n\
string search_energy\n\
SearchSpace search_space\n\
SearchContact search_contact\n\
\n\
int32 max_steps\n\
\n\
================================================================================\n\
MSG: graspit_interface/Planner\n\
uint8 SIM_ANN                      = 0\n\
uint8 MULTI_THREADED               = 1\n\
\n\
uint8 type\n\
================================================================================\n\
MSG: graspit_interface/SearchSpace\n\
uint8 SPACE_AXIS_ANGLE    = 0\n\
uint8 SPACE_COMPLETE      = 1\n\
uint8 SPACE_ELLIPSOID     = 2\n\
uint8 SPACE_APPROACH      = 3\n\
\n\
uint8 type\n\
================================================================================\n\
MSG: graspit_interface/SearchContact\n\
uint8 CONTACT_PRESET    = 0\n\
uint8 CONTACT_LIVE      = 1\n\
\n\
uint8 type	\n\
================================================================================\n\
MSG: graspit_interface/PlanGraspsActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
PlanGraspsResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: graspit_interface/PlanGraspsResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Result\n\
Grasp[] grasps\n\
float64[] energies\n\
string search_energy\n\
\n\
================================================================================\n\
MSG: graspit_interface/Grasp\n\
# id for the body the grasp was planned on.\n\
int32 graspable_body_id\n\
\n\
# pose of the hand with respect to the object \n\
# the grasp was planned on\n\
geometry_msgs/Pose pose\n\
\n\
float64[] dofs\n\
\n\
float64 epsilon_quality\n\
float64 volume_quality\n\
\n\
\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: graspit_interface/PlanGraspsActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
PlanGraspsFeedback feedback\n\
\n\
================================================================================\n\
MSG: graspit_interface/PlanGraspsFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Feedback \n\
int32 current_step\n\
int32 current_num_grasps\n\
\n\
";
  }

  static const char* value(const ::graspit_interface::PlanGraspsAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanGraspsAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_interface::PlanGraspsAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_interface::PlanGraspsAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::graspit_interface::PlanGraspsActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::graspit_interface::PlanGraspsActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::graspit_interface::PlanGraspsActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_PLANGRASPSACTION_H

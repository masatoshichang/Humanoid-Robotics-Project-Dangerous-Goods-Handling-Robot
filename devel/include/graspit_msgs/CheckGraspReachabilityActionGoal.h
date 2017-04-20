// Generated by gencpp from file graspit_msgs/CheckGraspReachabilityActionGoal.msg
// DO NOT EDIT!


#ifndef GRASPIT_MSGS_MESSAGE_CHECKGRASPREACHABILITYACTIONGOAL_H
#define GRASPIT_MSGS_MESSAGE_CHECKGRASPREACHABILITYACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <graspit_msgs/CheckGraspReachabilityGoal.h>

namespace graspit_msgs
{
template <class ContainerAllocator>
struct CheckGraspReachabilityActionGoal_
{
  typedef CheckGraspReachabilityActionGoal_<ContainerAllocator> Type;

  CheckGraspReachabilityActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  CheckGraspReachabilityActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CheckGraspReachabilityActionGoal_

typedef ::graspit_msgs::CheckGraspReachabilityActionGoal_<std::allocator<void> > CheckGraspReachabilityActionGoal;

typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityActionGoal > CheckGraspReachabilityActionGoalPtr;
typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityActionGoal const> CheckGraspReachabilityActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graspit_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'graspit_msgs': ['/home/masatoshichang/robotics/fetch_ws/src/graspit_msgs/msg', '/home/masatoshichang/robotics/fetch_ws/devel/share/graspit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f6b15f85c7a2e4a4a37987a2a5745ec";
  }

  static const char* value(const ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f6b15f85c7a2e4aULL;
  static const uint64_t static_value2 = 0x4a37987a2a5745ecULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_msgs/CheckGraspReachabilityActionGoal";
  }

  static const char* value(const ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
CheckGraspReachabilityGoal goal\n\
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
MSG: graspit_msgs/CheckGraspReachabilityGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
graspit_msgs/Grasp grasp\n\
\n\
================================================================================\n\
MSG: graspit_msgs/Grasp\n\
string object_name\n\
float64 epsilon_quality\n\
float64 volume_quality\n\
float64[] secondary_qualities\n\
int32 grasp_source\n\
int32 grasp_group\n\
int32 grasp_type\n\
int32 grasp_id\n\
geometry_msgs/Pose pre_grasp_pose\n\
geometry_msgs/Pose final_grasp_pose\n\
float64[] pre_grasp_dof\n\
float64[] final_grasp_dof\n\
#geometry_msgs/Pose demonstration_pose\n\
\n\
int32 TYPE_UNKNOWN = 1\n\
int32 TYPE_FINGERTIP = 2\n\
int32 TYPE_POWER_GRASP = 3        # free grasp\n\
int32 TYPE_TABLECONTACT_GRASP = 4 # finger will make contact w/ table\n\
int32 SPREAD_DOF=0\n\
int32 FINGER_1_DOF=1\n\
int32 FINGER_2_DOF=2\n\
int32 FINGER_3_DOF=3\n\
int32 SOURCE_EIGENGRASPS=1\n\
int32 SOURCE_HUMAN=2\n\
int32 SOURCE_HUMAN_REFINED=3\n\
int32 SOURCE_TABLETOP_ALIGNED=7\n\
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
";
  }

  static const char* value(const ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckGraspReachabilityActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_msgs::CheckGraspReachabilityActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_MSGS_MESSAGE_CHECKGRASPREACHABILITYACTIONGOAL_H

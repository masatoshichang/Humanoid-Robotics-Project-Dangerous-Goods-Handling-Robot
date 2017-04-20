// Generated by gencpp from file graspit_msgs/CheckGraspReachabilityGoal.msg
// DO NOT EDIT!


#ifndef GRASPIT_MSGS_MESSAGE_CHECKGRASPREACHABILITYGOAL_H
#define GRASPIT_MSGS_MESSAGE_CHECKGRASPREACHABILITYGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <graspit_msgs/Grasp.h>

namespace graspit_msgs
{
template <class ContainerAllocator>
struct CheckGraspReachabilityGoal_
{
  typedef CheckGraspReachabilityGoal_<ContainerAllocator> Type;

  CheckGraspReachabilityGoal_()
    : grasp()  {
    }
  CheckGraspReachabilityGoal_(const ContainerAllocator& _alloc)
    : grasp(_alloc)  {
  (void)_alloc;
    }



   typedef  ::graspit_msgs::Grasp_<ContainerAllocator>  _grasp_type;
  _grasp_type grasp;




  typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> const> ConstPtr;

}; // struct CheckGraspReachabilityGoal_

typedef ::graspit_msgs::CheckGraspReachabilityGoal_<std::allocator<void> > CheckGraspReachabilityGoal;

typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityGoal > CheckGraspReachabilityGoalPtr;
typedef boost::shared_ptr< ::graspit_msgs::CheckGraspReachabilityGoal const> CheckGraspReachabilityGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graspit_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'graspit_msgs': ['/home/masatoshichang/robotics/fetch_ws/src/graspit_msgs/msg', '/home/masatoshichang/robotics/fetch_ws/devel/share/graspit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "841666638cd8e1dc27b6c550bd4441af";
  }

  static const char* value(const ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x841666638cd8e1dcULL;
  static const uint64_t static_value2 = 0x27b6c550bd4441afULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_msgs/CheckGraspReachabilityGoal";
  }

  static const char* value(const ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
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

  static const char* value(const ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grasp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckGraspReachabilityGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_msgs::CheckGraspReachabilityGoal_<ContainerAllocator>& v)
  {
    s << indent << "grasp: ";
    s << std::endl;
    Printer< ::graspit_msgs::Grasp_<ContainerAllocator> >::stream(s, indent + "  ", v.grasp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_MSGS_MESSAGE_CHECKGRASPREACHABILITYGOAL_H

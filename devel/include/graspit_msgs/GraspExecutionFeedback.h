// Generated by gencpp from file graspit_msgs/GraspExecutionFeedback.msg
// DO NOT EDIT!


#ifndef GRASPIT_MSGS_MESSAGE_GRASPEXECUTIONFEEDBACK_H
#define GRASPIT_MSGS_MESSAGE_GRASPEXECUTIONFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace graspit_msgs
{
template <class ContainerAllocator>
struct GraspExecutionFeedback_
{
  typedef GraspExecutionFeedback_<ContainerAllocator> Type;

  GraspExecutionFeedback_()
    {
    }
  GraspExecutionFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct GraspExecutionFeedback_

typedef ::graspit_msgs::GraspExecutionFeedback_<std::allocator<void> > GraspExecutionFeedback;

typedef boost::shared_ptr< ::graspit_msgs::GraspExecutionFeedback > GraspExecutionFeedbackPtr;
typedef boost::shared_ptr< ::graspit_msgs::GraspExecutionFeedback const> GraspExecutionFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graspit_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'graspit_msgs': ['/home/masatoshichang/robotics/fetch_ws/src/graspit_msgs/msg', '/home/masatoshichang/robotics/fetch_ws/devel/share/graspit_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_msgs/GraspExecutionFeedback";
  }

  static const char* value(const ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
\n\
";
  }

  static const char* value(const ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GraspExecutionFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::graspit_msgs::GraspExecutionFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_MSGS_MESSAGE_GRASPEXECUTIONFEEDBACK_H

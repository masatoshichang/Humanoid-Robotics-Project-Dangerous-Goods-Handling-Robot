// Generated by gencpp from file graspit_msgs/ObjectInfo.msg
// DO NOT EDIT!


#ifndef GRASPIT_MSGS_MESSAGE_OBJECTINFO_H
#define GRASPIT_MSGS_MESSAGE_OBJECTINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace graspit_msgs
{
template <class ContainerAllocator>
struct ObjectInfo_
{
  typedef ObjectInfo_<ContainerAllocator> Type;

  ObjectInfo_()
    : object_name()
    , model_name()
    , object_pose()  {
    }
  ObjectInfo_(const ContainerAllocator& _alloc)
    : object_name(_alloc)
    , model_name(_alloc)
    , object_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _object_name_type;
  _object_name_type object_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _model_name_type;
  _model_name_type model_name;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _object_pose_type;
  _object_pose_type object_pose;




  typedef boost::shared_ptr< ::graspit_msgs::ObjectInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_msgs::ObjectInfo_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectInfo_

typedef ::graspit_msgs::ObjectInfo_<std::allocator<void> > ObjectInfo;

typedef boost::shared_ptr< ::graspit_msgs::ObjectInfo > ObjectInfoPtr;
typedef boost::shared_ptr< ::graspit_msgs::ObjectInfo const> ObjectInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_msgs::ObjectInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::ObjectInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::ObjectInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::ObjectInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5a871486413e8c1dec23988ebdecc5f";
  }

  static const char* value(const ::graspit_msgs::ObjectInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5a871486413e8c1ULL;
  static const uint64_t static_value2 = 0xdec23988ebdecc5fULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_msgs/ObjectInfo";
  }

  static const char* value(const ::graspit_msgs::ObjectInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string object_name\n\
string model_name\n\
geometry_msgs/Pose object_pose\n\
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

  static const char* value(const ::graspit_msgs::ObjectInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_name);
      stream.next(m.model_name);
      stream.next(m.object_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_msgs::ObjectInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_msgs::ObjectInfo_<ContainerAllocator>& v)
  {
    s << indent << "object_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.object_name);
    s << indent << "model_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.model_name);
    s << indent << "object_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.object_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_MSGS_MESSAGE_OBJECTINFO_H

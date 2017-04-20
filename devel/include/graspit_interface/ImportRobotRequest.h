// Generated by gencpp from file graspit_interface/ImportRobotRequest.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_IMPORTROBOTREQUEST_H
#define GRASPIT_INTERFACE_MESSAGE_IMPORTROBOTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace graspit_interface
{
template <class ContainerAllocator>
struct ImportRobotRequest_
{
  typedef ImportRobotRequest_<ContainerAllocator> Type;

  ImportRobotRequest_()
    : filename()
    , pose()  {
    }
  ImportRobotRequest_(const ContainerAllocator& _alloc)
    : filename(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filename_type;
  _filename_type filename;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;




  typedef boost::shared_ptr< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ImportRobotRequest_

typedef ::graspit_interface::ImportRobotRequest_<std::allocator<void> > ImportRobotRequest;

typedef boost::shared_ptr< ::graspit_interface::ImportRobotRequest > ImportRobotRequestPtr;
typedef boost::shared_ptr< ::graspit_interface::ImportRobotRequest const> ImportRobotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_interface::ImportRobotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67fcc86db491285e47664cb79b9f4221";
  }

  static const char* value(const ::graspit_interface::ImportRobotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67fcc86db491285eULL;
  static const uint64_t static_value2 = 0x47664cb79b9f4221ULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_interface/ImportRobotRequest";
  }

  static const char* value(const ::graspit_interface::ImportRobotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filename\n\
geometry_msgs/Pose pose\n\
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

  static const char* value(const ::graspit_interface::ImportRobotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filename);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImportRobotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_interface::ImportRobotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_interface::ImportRobotRequest_<ContainerAllocator>& v)
  {
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.filename);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_IMPORTROBOTREQUEST_H

// Generated by gencpp from file graspit_interface/GetGraspableBodyRequest.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_GETGRASPABLEBODYREQUEST_H
#define GRASPIT_INTERFACE_MESSAGE_GETGRASPABLEBODYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace graspit_interface
{
template <class ContainerAllocator>
struct GetGraspableBodyRequest_
{
  typedef GetGraspableBodyRequest_<ContainerAllocator> Type;

  GetGraspableBodyRequest_()
    : id(0)  {
    }
  GetGraspableBodyRequest_(const ContainerAllocator& _alloc)
    : id(0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;




  typedef boost::shared_ptr< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetGraspableBodyRequest_

typedef ::graspit_interface::GetGraspableBodyRequest_<std::allocator<void> > GetGraspableBodyRequest;

typedef boost::shared_ptr< ::graspit_interface::GetGraspableBodyRequest > GetGraspableBodyRequestPtr;
typedef boost::shared_ptr< ::graspit_interface::GetGraspableBodyRequest const> GetGraspableBodyRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graspit_interface

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'graspit_interface': ['/home/masatoshichang/robotics/fetch_ws/src/graspit_interface/msg', '/home/masatoshichang/robotics/fetch_ws/devel/share/graspit_interface/msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c5e4a7d59c68f74eabcec876a00216aa";
  }

  static const char* value(const ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc5e4a7d59c68f74eULL;
  static const uint64_t static_value2 = 0xabcec876a00216aaULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_interface/GetGraspableBodyRequest";
  }

  static const char* value(const ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
";
  }

  static const char* value(const ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetGraspableBodyRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_interface::GetGraspableBodyRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_GETGRASPABLEBODYREQUEST_H

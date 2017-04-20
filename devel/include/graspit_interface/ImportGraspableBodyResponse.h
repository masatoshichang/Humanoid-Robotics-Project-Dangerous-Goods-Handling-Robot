// Generated by gencpp from file graspit_interface/ImportGraspableBodyResponse.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_IMPORTGRASPABLEBODYRESPONSE_H
#define GRASPIT_INTERFACE_MESSAGE_IMPORTGRASPABLEBODYRESPONSE_H


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
struct ImportGraspableBodyResponse_
{
  typedef ImportGraspableBodyResponse_<ContainerAllocator> Type;

  ImportGraspableBodyResponse_()
    : result(0)  {
    }
  ImportGraspableBodyResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;


    enum { RESULT_SUCCESS = 0u };
     enum { RESULT_FAILURE = 1u };
 

  typedef boost::shared_ptr< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ImportGraspableBodyResponse_

typedef ::graspit_interface::ImportGraspableBodyResponse_<std::allocator<void> > ImportGraspableBodyResponse;

typedef boost::shared_ptr< ::graspit_interface::ImportGraspableBodyResponse > ImportGraspableBodyResponsePtr;
typedef boost::shared_ptr< ::graspit_interface::ImportGraspableBodyResponse const> ImportGraspableBodyResponseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "97cab54dd6dbe9e837f2d3a5a24e81f8";
  }

  static const char* value(const ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x97cab54dd6dbe9e8ULL;
  static const uint64_t static_value2 = 0x37f2d3a5a24e81f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_interface/ImportGraspableBodyResponse";
  }

  static const char* value(const ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 RESULT_SUCCESS    = 0\n\
uint8 RESULT_FAILURE    = 1\n\
\n\
uint8 result\n\
";
  }

  static const char* value(const ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImportGraspableBodyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_interface::ImportGraspableBodyResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_IMPORTGRASPABLEBODYRESPONSE_H

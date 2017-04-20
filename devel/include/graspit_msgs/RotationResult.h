// Generated by gencpp from file graspit_msgs/RotationResult.msg
// DO NOT EDIT!


#ifndef GRASPIT_MSGS_MESSAGE_ROTATIONRESULT_H
#define GRASPIT_MSGS_MESSAGE_ROTATIONRESULT_H


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
struct RotationResult_
{
  typedef RotationResult_<ContainerAllocator> Type;

  RotationResult_()
    : success(false)  {
    }
  RotationResult_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;




  typedef boost::shared_ptr< ::graspit_msgs::RotationResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graspit_msgs::RotationResult_<ContainerAllocator> const> ConstPtr;

}; // struct RotationResult_

typedef ::graspit_msgs::RotationResult_<std::allocator<void> > RotationResult;

typedef boost::shared_ptr< ::graspit_msgs::RotationResult > RotationResultPtr;
typedef boost::shared_ptr< ::graspit_msgs::RotationResult const> RotationResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graspit_msgs::RotationResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graspit_msgs::RotationResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::graspit_msgs::RotationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graspit_msgs::RotationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::RotationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graspit_msgs::RotationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::RotationResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graspit_msgs::RotationResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graspit_msgs::RotationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::graspit_msgs::RotationResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::graspit_msgs::RotationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graspit_msgs/RotationResult";
  }

  static const char* value(const ::graspit_msgs::RotationResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graspit_msgs::RotationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
bool success\n\
";
  }

  static const char* value(const ::graspit_msgs::RotationResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graspit_msgs::RotationResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotationResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graspit_msgs::RotationResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graspit_msgs::RotationResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPIT_MSGS_MESSAGE_ROTATIONRESULT_H

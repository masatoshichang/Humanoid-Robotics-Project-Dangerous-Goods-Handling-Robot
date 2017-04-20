// Generated by gencpp from file graspit_interface/ImportGraspableBody.msg
// DO NOT EDIT!


#ifndef GRASPIT_INTERFACE_MESSAGE_IMPORTGRASPABLEBODY_H
#define GRASPIT_INTERFACE_MESSAGE_IMPORTGRASPABLEBODY_H

#include <ros/service_traits.h>


#include <graspit_interface/ImportGraspableBodyRequest.h>
#include <graspit_interface/ImportGraspableBodyResponse.h>


namespace graspit_interface
{

struct ImportGraspableBody
{

typedef ImportGraspableBodyRequest Request;
typedef ImportGraspableBodyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ImportGraspableBody
} // namespace graspit_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::graspit_interface::ImportGraspableBody > {
  static const char* value()
  {
    return "f93e69a0f69e4bad6bb0d444c65417e2";
  }

  static const char* value(const ::graspit_interface::ImportGraspableBody&) { return value(); }
};

template<>
struct DataType< ::graspit_interface::ImportGraspableBody > {
  static const char* value()
  {
    return "graspit_interface/ImportGraspableBody";
  }

  static const char* value(const ::graspit_interface::ImportGraspableBody&) { return value(); }
};


// service_traits::MD5Sum< ::graspit_interface::ImportGraspableBodyRequest> should match 
// service_traits::MD5Sum< ::graspit_interface::ImportGraspableBody > 
template<>
struct MD5Sum< ::graspit_interface::ImportGraspableBodyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::graspit_interface::ImportGraspableBody >::value();
  }
  static const char* value(const ::graspit_interface::ImportGraspableBodyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::graspit_interface::ImportGraspableBodyRequest> should match 
// service_traits::DataType< ::graspit_interface::ImportGraspableBody > 
template<>
struct DataType< ::graspit_interface::ImportGraspableBodyRequest>
{
  static const char* value()
  {
    return DataType< ::graspit_interface::ImportGraspableBody >::value();
  }
  static const char* value(const ::graspit_interface::ImportGraspableBodyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::graspit_interface::ImportGraspableBodyResponse> should match 
// service_traits::MD5Sum< ::graspit_interface::ImportGraspableBody > 
template<>
struct MD5Sum< ::graspit_interface::ImportGraspableBodyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::graspit_interface::ImportGraspableBody >::value();
  }
  static const char* value(const ::graspit_interface::ImportGraspableBodyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::graspit_interface::ImportGraspableBodyResponse> should match 
// service_traits::DataType< ::graspit_interface::ImportGraspableBody > 
template<>
struct DataType< ::graspit_interface::ImportGraspableBodyResponse>
{
  static const char* value()
  {
    return DataType< ::graspit_interface::ImportGraspableBody >::value();
  }
  static const char* value(const ::graspit_interface::ImportGraspableBodyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GRASPIT_INTERFACE_MESSAGE_IMPORTGRASPABLEBODY_H

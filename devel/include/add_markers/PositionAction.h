// Generated by gencpp from file add_markers/PositionAction.msg
// DO NOT EDIT!


#ifndef ADD_MARKERS_MESSAGE_POSITIONACTION_H
#define ADD_MARKERS_MESSAGE_POSITIONACTION_H

#include <ros/service_traits.h>


#include <add_markers/PositionActionRequest.h>
#include <add_markers/PositionActionResponse.h>


namespace add_markers
{

struct PositionAction
{

typedef PositionActionRequest Request;
typedef PositionActionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PositionAction
} // namespace add_markers


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::add_markers::PositionAction > {
  static const char* value()
  {
    return "4980732f18a499f52b643a6dd94ab4b6";
  }

  static const char* value(const ::add_markers::PositionAction&) { return value(); }
};

template<>
struct DataType< ::add_markers::PositionAction > {
  static const char* value()
  {
    return "add_markers/PositionAction";
  }

  static const char* value(const ::add_markers::PositionAction&) { return value(); }
};


// service_traits::MD5Sum< ::add_markers::PositionActionRequest> should match 
// service_traits::MD5Sum< ::add_markers::PositionAction > 
template<>
struct MD5Sum< ::add_markers::PositionActionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::add_markers::PositionAction >::value();
  }
  static const char* value(const ::add_markers::PositionActionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::add_markers::PositionActionRequest> should match 
// service_traits::DataType< ::add_markers::PositionAction > 
template<>
struct DataType< ::add_markers::PositionActionRequest>
{
  static const char* value()
  {
    return DataType< ::add_markers::PositionAction >::value();
  }
  static const char* value(const ::add_markers::PositionActionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::add_markers::PositionActionResponse> should match 
// service_traits::MD5Sum< ::add_markers::PositionAction > 
template<>
struct MD5Sum< ::add_markers::PositionActionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::add_markers::PositionAction >::value();
  }
  static const char* value(const ::add_markers::PositionActionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::add_markers::PositionActionResponse> should match 
// service_traits::DataType< ::add_markers::PositionAction > 
template<>
struct DataType< ::add_markers::PositionActionResponse>
{
  static const char* value()
  {
    return DataType< ::add_markers::PositionAction >::value();
  }
  static const char* value(const ::add_markers::PositionActionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ADD_MARKERS_MESSAGE_POSITIONACTION_H

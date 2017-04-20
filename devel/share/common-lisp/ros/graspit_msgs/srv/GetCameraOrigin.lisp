; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-srv)


;//! \htmlinclude GetCameraOrigin-request.msg.html

(cl:defclass <GetCameraOrigin-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCameraOrigin-request (<GetCameraOrigin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCameraOrigin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCameraOrigin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-srv:<GetCameraOrigin-request> is deprecated: use graspit_msgs-srv:GetCameraOrigin-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCameraOrigin-request>) ostream)
  "Serializes a message object of type '<GetCameraOrigin-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCameraOrigin-request>) istream)
  "Deserializes a message object of type '<GetCameraOrigin-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCameraOrigin-request>)))
  "Returns string type for a service object of type '<GetCameraOrigin-request>"
  "graspit_msgs/GetCameraOriginRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraOrigin-request)))
  "Returns string type for a service object of type 'GetCameraOrigin-request"
  "graspit_msgs/GetCameraOriginRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCameraOrigin-request>)))
  "Returns md5sum for a message object of type '<GetCameraOrigin-request>"
  "2eccb8abb2ccbb1de388429ce1a0fdec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCameraOrigin-request)))
  "Returns md5sum for a message object of type 'GetCameraOrigin-request"
  "2eccb8abb2ccbb1de388429ce1a0fdec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCameraOrigin-request>)))
  "Returns full string definition for message of type '<GetCameraOrigin-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCameraOrigin-request)))
  "Returns full string definition for message of type 'GetCameraOrigin-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCameraOrigin-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCameraOrigin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCameraOrigin-request
))
;//! \htmlinclude GetCameraOrigin-response.msg.html

(cl:defclass <GetCameraOrigin-response> (roslisp-msg-protocol:ros-message)
  ((camera_pose
    :reader camera_pose
    :initarg :camera_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetCameraOrigin-response (<GetCameraOrigin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCameraOrigin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCameraOrigin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-srv:<GetCameraOrigin-response> is deprecated: use graspit_msgs-srv:GetCameraOrigin-response instead.")))

(cl:ensure-generic-function 'camera_pose-val :lambda-list '(m))
(cl:defmethod camera_pose-val ((m <GetCameraOrigin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-srv:camera_pose-val is deprecated.  Use graspit_msgs-srv:camera_pose instead.")
  (camera_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCameraOrigin-response>) ostream)
  "Serializes a message object of type '<GetCameraOrigin-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCameraOrigin-response>) istream)
  "Deserializes a message object of type '<GetCameraOrigin-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCameraOrigin-response>)))
  "Returns string type for a service object of type '<GetCameraOrigin-response>"
  "graspit_msgs/GetCameraOriginResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraOrigin-response)))
  "Returns string type for a service object of type 'GetCameraOrigin-response"
  "graspit_msgs/GetCameraOriginResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCameraOrigin-response>)))
  "Returns md5sum for a message object of type '<GetCameraOrigin-response>"
  "2eccb8abb2ccbb1de388429ce1a0fdec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCameraOrigin-response)))
  "Returns md5sum for a message object of type 'GetCameraOrigin-response"
  "2eccb8abb2ccbb1de388429ce1a0fdec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCameraOrigin-response>)))
  "Returns full string definition for message of type '<GetCameraOrigin-response>"
  (cl:format cl:nil "geometry_msgs/Pose camera_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCameraOrigin-response)))
  "Returns full string definition for message of type 'GetCameraOrigin-response"
  (cl:format cl:nil "geometry_msgs/Pose camera_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCameraOrigin-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCameraOrigin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCameraOrigin-response
    (cl:cons ':camera_pose (camera_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCameraOrigin)))
  'GetCameraOrigin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCameraOrigin)))
  'GetCameraOrigin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraOrigin)))
  "Returns string type for a service object of type '<GetCameraOrigin>"
  "graspit_msgs/GetCameraOrigin")
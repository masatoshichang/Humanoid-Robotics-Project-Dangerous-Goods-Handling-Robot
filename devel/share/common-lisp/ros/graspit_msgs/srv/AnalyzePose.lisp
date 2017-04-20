; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-srv)


;//! \htmlinclude AnalyzePose-request.msg.html

(cl:defclass <AnalyzePose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass AnalyzePose-request (<AnalyzePose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalyzePose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalyzePose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-srv:<AnalyzePose-request> is deprecated: use graspit_msgs-srv:AnalyzePose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AnalyzePose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-srv:pose-val is deprecated.  Use graspit_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalyzePose-request>) ostream)
  "Serializes a message object of type '<AnalyzePose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalyzePose-request>) istream)
  "Deserializes a message object of type '<AnalyzePose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalyzePose-request>)))
  "Returns string type for a service object of type '<AnalyzePose-request>"
  "graspit_msgs/AnalyzePoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalyzePose-request)))
  "Returns string type for a service object of type 'AnalyzePose-request"
  "graspit_msgs/AnalyzePoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalyzePose-request>)))
  "Returns md5sum for a message object of type '<AnalyzePose-request>"
  "79041c90ae0e6c55c5cfef12cac63573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalyzePose-request)))
  "Returns md5sum for a message object of type 'AnalyzePose-request"
  "79041c90ae0e6c55c5cfef12cac63573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalyzePose-request>)))
  "Returns full string definition for message of type '<AnalyzePose-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalyzePose-request)))
  "Returns full string definition for message of type 'AnalyzePose-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalyzePose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalyzePose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalyzePose-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude AnalyzePose-response.msg.html

(cl:defclass <AnalyzePose-response> (roslisp-msg-protocol:ros-message)
  ((success_probability
    :reader success_probability
    :initarg :success_probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass AnalyzePose-response (<AnalyzePose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalyzePose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalyzePose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-srv:<AnalyzePose-response> is deprecated: use graspit_msgs-srv:AnalyzePose-response instead.")))

(cl:ensure-generic-function 'success_probability-val :lambda-list '(m))
(cl:defmethod success_probability-val ((m <AnalyzePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-srv:success_probability-val is deprecated.  Use graspit_msgs-srv:success_probability instead.")
  (success_probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalyzePose-response>) ostream)
  "Serializes a message object of type '<AnalyzePose-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'success_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalyzePose-response>) istream)
  "Deserializes a message object of type '<AnalyzePose-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success_probability) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalyzePose-response>)))
  "Returns string type for a service object of type '<AnalyzePose-response>"
  "graspit_msgs/AnalyzePoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalyzePose-response)))
  "Returns string type for a service object of type 'AnalyzePose-response"
  "graspit_msgs/AnalyzePoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalyzePose-response>)))
  "Returns md5sum for a message object of type '<AnalyzePose-response>"
  "79041c90ae0e6c55c5cfef12cac63573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalyzePose-response)))
  "Returns md5sum for a message object of type 'AnalyzePose-response"
  "79041c90ae0e6c55c5cfef12cac63573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalyzePose-response>)))
  "Returns full string definition for message of type '<AnalyzePose-response>"
  (cl:format cl:nil "float64 success_probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalyzePose-response)))
  "Returns full string definition for message of type 'AnalyzePose-response"
  (cl:format cl:nil "float64 success_probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalyzePose-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalyzePose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalyzePose-response
    (cl:cons ':success_probability (success_probability msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AnalyzePose)))
  'AnalyzePose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AnalyzePose)))
  'AnalyzePose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalyzePose)))
  "Returns string type for a service object of type '<AnalyzePose>"
  "graspit_msgs/AnalyzePose")
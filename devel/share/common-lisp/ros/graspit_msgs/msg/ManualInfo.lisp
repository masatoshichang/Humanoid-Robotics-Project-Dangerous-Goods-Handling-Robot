; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-msg)


;//! \htmlinclude ManualInfo.msg.html

(cl:defclass <ManualInfo> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0))
)

(cl:defclass ManualInfo (<ManualInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManualInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManualInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-msg:<ManualInfo> is deprecated: use graspit_msgs-msg:ManualInfo instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <ManualInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:axis-val is deprecated.  Use graspit_msgs-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ManualInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:direction-val is deprecated.  Use graspit_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManualInfo>) ostream)
  "Serializes a message object of type '<ManualInfo>"
  (cl:let* ((signed (cl:slot-value msg 'axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManualInfo>) istream)
  "Deserializes a message object of type '<ManualInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManualInfo>)))
  "Returns string type for a message object of type '<ManualInfo>"
  "graspit_msgs/ManualInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManualInfo)))
  "Returns string type for a message object of type 'ManualInfo"
  "graspit_msgs/ManualInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManualInfo>)))
  "Returns md5sum for a message object of type '<ManualInfo>"
  "487430391e4f7bcb6fffca78a6d1435b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManualInfo)))
  "Returns md5sum for a message object of type 'ManualInfo"
  "487430391e4f7bcb6fffca78a6d1435b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManualInfo>)))
  "Returns full string definition for message of type '<ManualInfo>"
  (cl:format cl:nil "int32 axis~%int32 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManualInfo)))
  "Returns full string definition for message of type 'ManualInfo"
  (cl:format cl:nil "int32 axis~%int32 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManualInfo>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManualInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ManualInfo
    (cl:cons ':axis (axis msg))
    (cl:cons ':direction (direction msg))
))

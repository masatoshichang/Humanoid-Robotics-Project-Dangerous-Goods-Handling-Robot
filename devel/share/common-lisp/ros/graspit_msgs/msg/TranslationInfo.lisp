; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-msg)


;//! \htmlinclude TranslationInfo.msg.html

(cl:defclass <TranslationInfo> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type cl:string
    :initform "")
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass TranslationInfo (<TranslationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TranslationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TranslationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-msg:<TranslationInfo> is deprecated: use graspit_msgs-msg:TranslationInfo instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <TranslationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:axis-val is deprecated.  Use graspit_msgs-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <TranslationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:direction-val is deprecated.  Use graspit_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TranslationInfo>) ostream)
  "Serializes a message object of type '<TranslationInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'axis))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TranslationInfo>) istream)
  "Deserializes a message object of type '<TranslationInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'axis) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'axis) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TranslationInfo>)))
  "Returns string type for a message object of type '<TranslationInfo>"
  "graspit_msgs/TranslationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslationInfo)))
  "Returns string type for a message object of type 'TranslationInfo"
  "graspit_msgs/TranslationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TranslationInfo>)))
  "Returns md5sum for a message object of type '<TranslationInfo>"
  "29b03e24aa12fc30c591b02baf6c9d8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TranslationInfo)))
  "Returns md5sum for a message object of type 'TranslationInfo"
  "29b03e24aa12fc30c591b02baf6c9d8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TranslationInfo>)))
  "Returns full string definition for message of type '<TranslationInfo>"
  (cl:format cl:nil "string axis~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TranslationInfo)))
  "Returns full string definition for message of type 'TranslationInfo"
  (cl:format cl:nil "string axis~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TranslationInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'axis))
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TranslationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TranslationInfo
    (cl:cons ':axis (axis msg))
    (cl:cons ':direction (direction msg))
))

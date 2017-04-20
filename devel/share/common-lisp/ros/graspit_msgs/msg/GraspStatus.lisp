; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-msg)


;//! \htmlinclude GraspStatus.msg.html

(cl:defclass <GraspStatus> (roslisp-msg-protocol:ros-message)
  ((grasp_status
    :reader grasp_status
    :initarg :grasp_status
    :type cl:fixnum
    :initform 0)
   (status_msg
    :reader status_msg
    :initarg :status_msg
    :type cl:string
    :initform "")
   (grasp_identifier
    :reader grasp_identifier
    :initarg :grasp_identifier
    :type cl:float
    :initform 0.0))
)

(cl:defclass GraspStatus (<GraspStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-msg:<GraspStatus> is deprecated: use graspit_msgs-msg:GraspStatus instead.")))

(cl:ensure-generic-function 'grasp_status-val :lambda-list '(m))
(cl:defmethod grasp_status-val ((m <GraspStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:grasp_status-val is deprecated.  Use graspit_msgs-msg:grasp_status instead.")
  (grasp_status m))

(cl:ensure-generic-function 'status_msg-val :lambda-list '(m))
(cl:defmethod status_msg-val ((m <GraspStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:status_msg-val is deprecated.  Use graspit_msgs-msg:status_msg instead.")
  (status_msg m))

(cl:ensure-generic-function 'grasp_identifier-val :lambda-list '(m))
(cl:defmethod grasp_identifier-val ((m <GraspStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:grasp_identifier-val is deprecated.  Use graspit_msgs-msg:grasp_identifier instead.")
  (grasp_identifier m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GraspStatus>)))
    "Constants for message type '<GraspStatus>"
  '((:FAILED . 0)
    (:SUCCESS . 1)
    (:UNREACHABLE . 2)
    (:OBJECTERROR . 4)
    (:ROBOTERROR . 8)
    (:ENDEFFECTORERROR . 16)
    (:GRASPERROR . 32)
    (:PREGRASPERROR . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GraspStatus)))
    "Constants for message type 'GraspStatus"
  '((:FAILED . 0)
    (:SUCCESS . 1)
    (:UNREACHABLE . 2)
    (:OBJECTERROR . 4)
    (:ROBOTERROR . 8)
    (:ENDEFFECTORERROR . 16)
    (:GRASPERROR . 32)
    (:PREGRASPERROR . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspStatus>) ostream)
  "Serializes a message object of type '<GraspStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grasp_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_msg))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'grasp_identifier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspStatus>) istream)
  "Deserializes a message object of type '<GraspStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grasp_status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grasp_identifier) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspStatus>)))
  "Returns string type for a message object of type '<GraspStatus>"
  "graspit_msgs/GraspStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspStatus)))
  "Returns string type for a message object of type 'GraspStatus"
  "graspit_msgs/GraspStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspStatus>)))
  "Returns md5sum for a message object of type '<GraspStatus>"
  "88d06ce7ea2a1be53f7072dbaa262a0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspStatus)))
  "Returns md5sum for a message object of type 'GraspStatus"
  "88d06ce7ea2a1be53f7072dbaa262a0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspStatus>)))
  "Returns full string definition for message of type '<GraspStatus>"
  (cl:format cl:nil "uint8 grasp_status~%string status_msg~%float64 grasp_identifier~%uint8 FAILED = 0~%uint8 SUCCESS = 1~%uint8 UNREACHABLE = 2~%uint8 OBJECTERROR = 4~%uint8 ROBOTERROR = 8~%uint8 ENDEFFECTORERROR = 16~%uint8 GRASPERROR = 32~%uint8 PREGRASPERROR = 64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspStatus)))
  "Returns full string definition for message of type 'GraspStatus"
  (cl:format cl:nil "uint8 grasp_status~%string status_msg~%float64 grasp_identifier~%uint8 FAILED = 0~%uint8 SUCCESS = 1~%uint8 UNREACHABLE = 2~%uint8 OBJECTERROR = 4~%uint8 ROBOTERROR = 8~%uint8 ENDEFFECTORERROR = 16~%uint8 GRASPERROR = 32~%uint8 PREGRASPERROR = 64~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_msg))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspStatus
    (cl:cons ':grasp_status (grasp_status msg))
    (cl:cons ':status_msg (status_msg msg))
    (cl:cons ':grasp_identifier (grasp_identifier msg))
))

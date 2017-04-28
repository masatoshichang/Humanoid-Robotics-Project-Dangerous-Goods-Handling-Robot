; Auto-generated. Do not edit!


(cl:in-package fetch_control-srv)


;//! \htmlinclude CanSeeCube-request.msg.html

(cl:defclass <CanSeeCube-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CanSeeCube-request (<CanSeeCube-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanSeeCube-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanSeeCube-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fetch_control-srv:<CanSeeCube-request> is deprecated: use fetch_control-srv:CanSeeCube-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanSeeCube-request>) ostream)
  "Serializes a message object of type '<CanSeeCube-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanSeeCube-request>) istream)
  "Deserializes a message object of type '<CanSeeCube-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanSeeCube-request>)))
  "Returns string type for a service object of type '<CanSeeCube-request>"
  "fetch_control/CanSeeCubeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanSeeCube-request)))
  "Returns string type for a service object of type 'CanSeeCube-request"
  "fetch_control/CanSeeCubeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanSeeCube-request>)))
  "Returns md5sum for a message object of type '<CanSeeCube-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanSeeCube-request)))
  "Returns md5sum for a message object of type 'CanSeeCube-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanSeeCube-request>)))
  "Returns full string definition for message of type '<CanSeeCube-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanSeeCube-request)))
  "Returns full string definition for message of type 'CanSeeCube-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanSeeCube-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanSeeCube-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CanSeeCube-request
))
;//! \htmlinclude CanSeeCube-response.msg.html

(cl:defclass <CanSeeCube-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass CanSeeCube-response (<CanSeeCube-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanSeeCube-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanSeeCube-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fetch_control-srv:<CanSeeCube-response> is deprecated: use fetch_control-srv:CanSeeCube-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CanSeeCube-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_control-srv:result-val is deprecated.  Use fetch_control-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanSeeCube-response>) ostream)
  "Serializes a message object of type '<CanSeeCube-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanSeeCube-response>) istream)
  "Deserializes a message object of type '<CanSeeCube-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanSeeCube-response>)))
  "Returns string type for a service object of type '<CanSeeCube-response>"
  "fetch_control/CanSeeCubeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanSeeCube-response)))
  "Returns string type for a service object of type 'CanSeeCube-response"
  "fetch_control/CanSeeCubeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanSeeCube-response>)))
  "Returns md5sum for a message object of type '<CanSeeCube-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanSeeCube-response)))
  "Returns md5sum for a message object of type 'CanSeeCube-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanSeeCube-response>)))
  "Returns full string definition for message of type '<CanSeeCube-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanSeeCube-response)))
  "Returns full string definition for message of type 'CanSeeCube-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanSeeCube-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanSeeCube-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CanSeeCube-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CanSeeCube)))
  'CanSeeCube-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CanSeeCube)))
  'CanSeeCube-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanSeeCube)))
  "Returns string type for a service object of type '<CanSeeCube>"
  "fetch_control/CanSeeCube")
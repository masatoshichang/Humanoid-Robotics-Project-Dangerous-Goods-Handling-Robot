; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-srv)


;//! \htmlinclude LocationInfo-request.msg.html

(cl:defclass <LocationInfo-request> (roslisp-msg-protocol:ros-message)
  ((grasp
    :reader grasp
    :initarg :grasp
    :type graspit_msgs-msg:Grasp
    :initform (cl:make-instance 'graspit_msgs-msg:Grasp)))
)

(cl:defclass LocationInfo-request (<LocationInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-srv:<LocationInfo-request> is deprecated: use graspit_msgs-srv:LocationInfo-request instead.")))

(cl:ensure-generic-function 'grasp-val :lambda-list '(m))
(cl:defmethod grasp-val ((m <LocationInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-srv:grasp-val is deprecated.  Use graspit_msgs-srv:grasp instead.")
  (grasp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationInfo-request>) ostream)
  "Serializes a message object of type '<LocationInfo-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationInfo-request>) istream)
  "Deserializes a message object of type '<LocationInfo-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationInfo-request>)))
  "Returns string type for a service object of type '<LocationInfo-request>"
  "graspit_msgs/LocationInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationInfo-request)))
  "Returns string type for a service object of type 'LocationInfo-request"
  "graspit_msgs/LocationInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationInfo-request>)))
  "Returns md5sum for a message object of type '<LocationInfo-request>"
  "2f96671305e2fc9024bbb630a95e1cff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationInfo-request)))
  "Returns md5sum for a message object of type 'LocationInfo-request"
  "2f96671305e2fc9024bbb630a95e1cff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationInfo-request>)))
  "Returns full string definition for message of type '<LocationInfo-request>"
  (cl:format cl:nil "graspit_msgs/Grasp grasp~%~%================================================================================~%MSG: graspit_msgs/Grasp~%string object_name~%float64 epsilon_quality~%float64 volume_quality~%float64[] secondary_qualities~%int32 grasp_source~%int32 grasp_group~%int32 grasp_type~%int32 grasp_id~%geometry_msgs/Pose pre_grasp_pose~%geometry_msgs/Pose final_grasp_pose~%float64[] pre_grasp_dof~%float64[] final_grasp_dof~%#geometry_msgs/Pose demonstration_pose~%~%int32 TYPE_UNKNOWN = 1~%int32 TYPE_FINGERTIP = 2~%int32 TYPE_POWER_GRASP = 3        # free grasp~%int32 TYPE_TABLECONTACT_GRASP = 4 # finger will make contact w/ table~%int32 SPREAD_DOF=0~%int32 FINGER_1_DOF=1~%int32 FINGER_2_DOF=2~%int32 FINGER_3_DOF=3~%int32 SOURCE_EIGENGRASPS=1~%int32 SOURCE_HUMAN=2~%int32 SOURCE_HUMAN_REFINED=3~%int32 SOURCE_TABLETOP_ALIGNED=7~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationInfo-request)))
  "Returns full string definition for message of type 'LocationInfo-request"
  (cl:format cl:nil "graspit_msgs/Grasp grasp~%~%================================================================================~%MSG: graspit_msgs/Grasp~%string object_name~%float64 epsilon_quality~%float64 volume_quality~%float64[] secondary_qualities~%int32 grasp_source~%int32 grasp_group~%int32 grasp_type~%int32 grasp_id~%geometry_msgs/Pose pre_grasp_pose~%geometry_msgs/Pose final_grasp_pose~%float64[] pre_grasp_dof~%float64[] final_grasp_dof~%#geometry_msgs/Pose demonstration_pose~%~%int32 TYPE_UNKNOWN = 1~%int32 TYPE_FINGERTIP = 2~%int32 TYPE_POWER_GRASP = 3        # free grasp~%int32 TYPE_TABLECONTACT_GRASP = 4 # finger will make contact w/ table~%int32 SPREAD_DOF=0~%int32 FINGER_1_DOF=1~%int32 FINGER_2_DOF=2~%int32 FINGER_3_DOF=3~%int32 SOURCE_EIGENGRASPS=1~%int32 SOURCE_HUMAN=2~%int32 SOURCE_HUMAN_REFINED=3~%int32 SOURCE_TABLETOP_ALIGNED=7~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationInfo-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationInfo-request
    (cl:cons ':grasp (grasp msg))
))
;//! \htmlinclude LocationInfo-response.msg.html

(cl:defclass <LocationInfo-response> (roslisp-msg-protocol:ros-message)
  ((isPossible
    :reader isPossible
    :initarg :isPossible
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LocationInfo-response (<LocationInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-srv:<LocationInfo-response> is deprecated: use graspit_msgs-srv:LocationInfo-response instead.")))

(cl:ensure-generic-function 'isPossible-val :lambda-list '(m))
(cl:defmethod isPossible-val ((m <LocationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-srv:isPossible-val is deprecated.  Use graspit_msgs-srv:isPossible instead.")
  (isPossible m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationInfo-response>) ostream)
  "Serializes a message object of type '<LocationInfo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isPossible) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationInfo-response>) istream)
  "Deserializes a message object of type '<LocationInfo-response>"
    (cl:setf (cl:slot-value msg 'isPossible) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationInfo-response>)))
  "Returns string type for a service object of type '<LocationInfo-response>"
  "graspit_msgs/LocationInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationInfo-response)))
  "Returns string type for a service object of type 'LocationInfo-response"
  "graspit_msgs/LocationInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationInfo-response>)))
  "Returns md5sum for a message object of type '<LocationInfo-response>"
  "2f96671305e2fc9024bbb630a95e1cff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationInfo-response)))
  "Returns md5sum for a message object of type 'LocationInfo-response"
  "2f96671305e2fc9024bbb630a95e1cff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationInfo-response>)))
  "Returns full string definition for message of type '<LocationInfo-response>"
  (cl:format cl:nil "bool isPossible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationInfo-response)))
  "Returns full string definition for message of type 'LocationInfo-response"
  (cl:format cl:nil "bool isPossible~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationInfo-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationInfo-response
    (cl:cons ':isPossible (isPossible msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocationInfo)))
  'LocationInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocationInfo)))
  'LocationInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationInfo)))
  "Returns string type for a service object of type '<LocationInfo>"
  "graspit_msgs/LocationInfo")
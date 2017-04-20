; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-msg)


;//! \htmlinclude SceneInfo.msg.html

(cl:defclass <SceneInfo> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector graspit_msgs-msg:ObjectInfo)
   :initform (cl:make-array 0 :element-type 'graspit_msgs-msg:ObjectInfo :initial-element (cl:make-instance 'graspit_msgs-msg:ObjectInfo))))
)

(cl:defclass SceneInfo (<SceneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-msg:<SceneInfo> is deprecated: use graspit_msgs-msg:SceneInfo instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:objects-val is deprecated.  Use graspit_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneInfo>) ostream)
  "Serializes a message object of type '<SceneInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneInfo>) istream)
  "Deserializes a message object of type '<SceneInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'graspit_msgs-msg:ObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneInfo>)))
  "Returns string type for a message object of type '<SceneInfo>"
  "graspit_msgs/SceneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneInfo)))
  "Returns string type for a message object of type 'SceneInfo"
  "graspit_msgs/SceneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneInfo>)))
  "Returns md5sum for a message object of type '<SceneInfo>"
  "25f615559301938cf5e6fecbdb4a420c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneInfo)))
  "Returns md5sum for a message object of type 'SceneInfo"
  "25f615559301938cf5e6fecbdb4a420c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneInfo>)))
  "Returns full string definition for message of type '<SceneInfo>"
  (cl:format cl:nil "graspit_msgs/ObjectInfo[] objects~%================================================================================~%MSG: graspit_msgs/ObjectInfo~%string object_name~%string model_name~%geometry_msgs/Pose object_pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneInfo)))
  "Returns full string definition for message of type 'SceneInfo"
  (cl:format cl:nil "graspit_msgs/ObjectInfo[] objects~%================================================================================~%MSG: graspit_msgs/ObjectInfo~%string object_name~%string model_name~%geometry_msgs/Pose object_pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneInfo
    (cl:cons ':objects (objects msg))
))

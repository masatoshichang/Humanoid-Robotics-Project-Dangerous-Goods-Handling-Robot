; Auto-generated. Do not edit!


(cl:in-package graspit_msgs-msg)


;//! \htmlinclude RunObjectRecognitionResult.msg.html

(cl:defclass <RunObjectRecognitionResult> (roslisp-msg-protocol:ros-message)
  ((object_info
    :reader object_info
    :initarg :object_info
    :type (cl:vector graspit_msgs-msg:ObjectInfo)
   :initform (cl:make-array 0 :element-type 'graspit_msgs-msg:ObjectInfo :initial-element (cl:make-instance 'graspit_msgs-msg:ObjectInfo))))
)

(cl:defclass RunObjectRecognitionResult (<RunObjectRecognitionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunObjectRecognitionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunObjectRecognitionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_msgs-msg:<RunObjectRecognitionResult> is deprecated: use graspit_msgs-msg:RunObjectRecognitionResult instead.")))

(cl:ensure-generic-function 'object_info-val :lambda-list '(m))
(cl:defmethod object_info-val ((m <RunObjectRecognitionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_msgs-msg:object_info-val is deprecated.  Use graspit_msgs-msg:object_info instead.")
  (object_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunObjectRecognitionResult>) ostream)
  "Serializes a message object of type '<RunObjectRecognitionResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunObjectRecognitionResult>) istream)
  "Deserializes a message object of type '<RunObjectRecognitionResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'graspit_msgs-msg:ObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunObjectRecognitionResult>)))
  "Returns string type for a message object of type '<RunObjectRecognitionResult>"
  "graspit_msgs/RunObjectRecognitionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunObjectRecognitionResult)))
  "Returns string type for a message object of type 'RunObjectRecognitionResult"
  "graspit_msgs/RunObjectRecognitionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunObjectRecognitionResult>)))
  "Returns md5sum for a message object of type '<RunObjectRecognitionResult>"
  "bdc8d8269b448089f6ea6aa337b990f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunObjectRecognitionResult)))
  "Returns md5sum for a message object of type 'RunObjectRecognitionResult"
  "bdc8d8269b448089f6ea6aa337b990f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunObjectRecognitionResult>)))
  "Returns full string definition for message of type '<RunObjectRecognitionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%graspit_msgs/ObjectInfo[] object_info~%~%================================================================================~%MSG: graspit_msgs/ObjectInfo~%string object_name~%string model_name~%geometry_msgs/Pose object_pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunObjectRecognitionResult)))
  "Returns full string definition for message of type 'RunObjectRecognitionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%graspit_msgs/ObjectInfo[] object_info~%~%================================================================================~%MSG: graspit_msgs/ObjectInfo~%string object_name~%string model_name~%geometry_msgs/Pose object_pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunObjectRecognitionResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunObjectRecognitionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'RunObjectRecognitionResult
    (cl:cons ':object_info (object_info msg))
))

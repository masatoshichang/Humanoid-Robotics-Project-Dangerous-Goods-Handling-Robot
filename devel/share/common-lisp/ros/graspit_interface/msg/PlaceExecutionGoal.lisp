; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude PlaceExecutionGoal.msg.html

(cl:defclass <PlaceExecutionGoal> (roslisp-msg-protocol:ros-message)
  ((grasp
    :reader grasp
    :initarg :grasp
    :type graspit_interface-msg:Grasp
    :initform (cl:make-instance 'graspit_interface-msg:Grasp)))
)

(cl:defclass PlaceExecutionGoal (<PlaceExecutionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaceExecutionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaceExecutionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<PlaceExecutionGoal> is deprecated: use graspit_interface-msg:PlaceExecutionGoal instead.")))

(cl:ensure-generic-function 'grasp-val :lambda-list '(m))
(cl:defmethod grasp-val ((m <PlaceExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:grasp-val is deprecated.  Use graspit_interface-msg:grasp instead.")
  (grasp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaceExecutionGoal>) ostream)
  "Serializes a message object of type '<PlaceExecutionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaceExecutionGoal>) istream)
  "Deserializes a message object of type '<PlaceExecutionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaceExecutionGoal>)))
  "Returns string type for a message object of type '<PlaceExecutionGoal>"
  "graspit_interface/PlaceExecutionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaceExecutionGoal)))
  "Returns string type for a message object of type 'PlaceExecutionGoal"
  "graspit_interface/PlaceExecutionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaceExecutionGoal>)))
  "Returns md5sum for a message object of type '<PlaceExecutionGoal>"
  "a312f56b63ceb614a83a0b34da32973f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaceExecutionGoal)))
  "Returns md5sum for a message object of type 'PlaceExecutionGoal"
  "a312f56b63ceb614a83a0b34da32973f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaceExecutionGoal>)))
  "Returns full string definition for message of type '<PlaceExecutionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%graspit_interface/Grasp grasp~%~%================================================================================~%MSG: graspit_interface/Grasp~%# id for the body the grasp was planned on.~%int32 graspable_body_id~%~%# pose of the hand with respect to the object ~%# the grasp was planned on~%geometry_msgs/Pose pose~%~%float64[] dofs~%~%float64 epsilon_quality~%float64 volume_quality~%~%# The approach direction to take before picking an object~%geometry_msgs/Vector3Stamped approach_direction~%~%#model_name of object to be grasped~%string object_name~%~%int32 grasp_id~%~%float64[] secondary_qualities~%int32 grasp_source~%int32 grasp_group~%int32 grasp_type~%~%~%geometry_msgs/Pose pre_grasp_pose~%geometry_msgs/Pose final_grasp_pose~%float64[] pre_grasp_dof~%float64[] final_grasp_dof~%#geometry_msgs/Pose demonstration_pose~%~%int32 TYPE_UNKNOWN = 1~%int32 TYPE_FINGERTIP = 2~%int32 TYPE_POWER_GRASP = 3        # free grasp~%int32 TYPE_TABLECONTACT_GRASP = 4 # finger will make contact w/ table~%int32 SPREAD_DOF=0~%int32 FINGER_1_DOF=1~%int32 FINGER_2_DOF=2~%int32 FINGER_3_DOF=3~%int32 SOURCE_EIGENGRASPS=1~%int32 SOURCE_HUMAN=2~%int32 SOURCE_HUMAN_REFINED=3~%int32 SOURCE_TABLETOP_ALIGNED=7~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaceExecutionGoal)))
  "Returns full string definition for message of type 'PlaceExecutionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%graspit_interface/Grasp grasp~%~%================================================================================~%MSG: graspit_interface/Grasp~%# id for the body the grasp was planned on.~%int32 graspable_body_id~%~%# pose of the hand with respect to the object ~%# the grasp was planned on~%geometry_msgs/Pose pose~%~%float64[] dofs~%~%float64 epsilon_quality~%float64 volume_quality~%~%# The approach direction to take before picking an object~%geometry_msgs/Vector3Stamped approach_direction~%~%#model_name of object to be grasped~%string object_name~%~%int32 grasp_id~%~%float64[] secondary_qualities~%int32 grasp_source~%int32 grasp_group~%int32 grasp_type~%~%~%geometry_msgs/Pose pre_grasp_pose~%geometry_msgs/Pose final_grasp_pose~%float64[] pre_grasp_dof~%float64[] final_grasp_dof~%#geometry_msgs/Pose demonstration_pose~%~%int32 TYPE_UNKNOWN = 1~%int32 TYPE_FINGERTIP = 2~%int32 TYPE_POWER_GRASP = 3        # free grasp~%int32 TYPE_TABLECONTACT_GRASP = 4 # finger will make contact w/ table~%int32 SPREAD_DOF=0~%int32 FINGER_1_DOF=1~%int32 FINGER_2_DOF=2~%int32 FINGER_3_DOF=3~%int32 SOURCE_EIGENGRASPS=1~%int32 SOURCE_HUMAN=2~%int32 SOURCE_HUMAN_REFINED=3~%int32 SOURCE_TABLETOP_ALIGNED=7~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaceExecutionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaceExecutionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaceExecutionGoal
    (cl:cons ':grasp (grasp msg))
))

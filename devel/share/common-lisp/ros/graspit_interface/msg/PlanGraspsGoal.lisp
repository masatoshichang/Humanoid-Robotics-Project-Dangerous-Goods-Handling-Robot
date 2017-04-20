; Auto-generated. Do not edit!


(cl:in-package graspit_interface-msg)


;//! \htmlinclude PlanGraspsGoal.msg.html

(cl:defclass <PlanGraspsGoal> (roslisp-msg-protocol:ros-message)
  ((graspable_body_id
    :reader graspable_body_id
    :initarg :graspable_body_id
    :type cl:integer
    :initform 0)
   (planner
    :reader planner
    :initarg :planner
    :type graspit_interface-msg:Planner
    :initform (cl:make-instance 'graspit_interface-msg:Planner))
   (search_energy
    :reader search_energy
    :initarg :search_energy
    :type cl:string
    :initform "")
   (search_space
    :reader search_space
    :initarg :search_space
    :type graspit_interface-msg:SearchSpace
    :initform (cl:make-instance 'graspit_interface-msg:SearchSpace))
   (search_contact
    :reader search_contact
    :initarg :search_contact
    :type graspit_interface-msg:SearchContact
    :initform (cl:make-instance 'graspit_interface-msg:SearchContact))
   (max_steps
    :reader max_steps
    :initarg :max_steps
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanGraspsGoal (<PlanGraspsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanGraspsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanGraspsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graspit_interface-msg:<PlanGraspsGoal> is deprecated: use graspit_interface-msg:PlanGraspsGoal instead.")))

(cl:ensure-generic-function 'graspable_body_id-val :lambda-list '(m))
(cl:defmethod graspable_body_id-val ((m <PlanGraspsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:graspable_body_id-val is deprecated.  Use graspit_interface-msg:graspable_body_id instead.")
  (graspable_body_id m))

(cl:ensure-generic-function 'planner-val :lambda-list '(m))
(cl:defmethod planner-val ((m <PlanGraspsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:planner-val is deprecated.  Use graspit_interface-msg:planner instead.")
  (planner m))

(cl:ensure-generic-function 'search_energy-val :lambda-list '(m))
(cl:defmethod search_energy-val ((m <PlanGraspsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:search_energy-val is deprecated.  Use graspit_interface-msg:search_energy instead.")
  (search_energy m))

(cl:ensure-generic-function 'search_space-val :lambda-list '(m))
(cl:defmethod search_space-val ((m <PlanGraspsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:search_space-val is deprecated.  Use graspit_interface-msg:search_space instead.")
  (search_space m))

(cl:ensure-generic-function 'search_contact-val :lambda-list '(m))
(cl:defmethod search_contact-val ((m <PlanGraspsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:search_contact-val is deprecated.  Use graspit_interface-msg:search_contact instead.")
  (search_contact m))

(cl:ensure-generic-function 'max_steps-val :lambda-list '(m))
(cl:defmethod max_steps-val ((m <PlanGraspsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graspit_interface-msg:max_steps-val is deprecated.  Use graspit_interface-msg:max_steps instead.")
  (max_steps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanGraspsGoal>) ostream)
  "Serializes a message object of type '<PlanGraspsGoal>"
  (cl:let* ((signed (cl:slot-value msg 'graspable_body_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'planner) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'search_energy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'search_energy))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'search_space) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'search_contact) ostream)
  (cl:let* ((signed (cl:slot-value msg 'max_steps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanGraspsGoal>) istream)
  "Deserializes a message object of type '<PlanGraspsGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'graspable_body_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'planner) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'search_energy) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'search_energy) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'search_space) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'search_contact) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_steps) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanGraspsGoal>)))
  "Returns string type for a message object of type '<PlanGraspsGoal>"
  "graspit_interface/PlanGraspsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanGraspsGoal)))
  "Returns string type for a message object of type 'PlanGraspsGoal"
  "graspit_interface/PlanGraspsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanGraspsGoal>)))
  "Returns md5sum for a message object of type '<PlanGraspsGoal>"
  "2529d72cbaf5ef4023f0a09663cf6c5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanGraspsGoal)))
  "Returns md5sum for a message object of type 'PlanGraspsGoal"
  "2529d72cbaf5ef4023f0a09663cf6c5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanGraspsGoal>)))
  "Returns full string definition for message of type '<PlanGraspsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int32 graspable_body_id~%~%Planner planner~%string search_energy~%SearchSpace search_space~%SearchContact search_contact~%~%int32 max_steps~%~%================================================================================~%MSG: graspit_interface/Planner~%uint8 SIM_ANN                      = 0~%uint8 MULTI_THREADED               = 1~%~%uint8 type~%================================================================================~%MSG: graspit_interface/SearchSpace~%uint8 SPACE_AXIS_ANGLE    = 0~%uint8 SPACE_COMPLETE      = 1~%uint8 SPACE_ELLIPSOID     = 2~%uint8 SPACE_APPROACH      = 3~%~%uint8 type~%================================================================================~%MSG: graspit_interface/SearchContact~%uint8 CONTACT_PRESET    = 0~%uint8 CONTACT_LIVE      = 1~%~%uint8 type	~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanGraspsGoal)))
  "Returns full string definition for message of type 'PlanGraspsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int32 graspable_body_id~%~%Planner planner~%string search_energy~%SearchSpace search_space~%SearchContact search_contact~%~%int32 max_steps~%~%================================================================================~%MSG: graspit_interface/Planner~%uint8 SIM_ANN                      = 0~%uint8 MULTI_THREADED               = 1~%~%uint8 type~%================================================================================~%MSG: graspit_interface/SearchSpace~%uint8 SPACE_AXIS_ANGLE    = 0~%uint8 SPACE_COMPLETE      = 1~%uint8 SPACE_ELLIPSOID     = 2~%uint8 SPACE_APPROACH      = 3~%~%uint8 type~%================================================================================~%MSG: graspit_interface/SearchContact~%uint8 CONTACT_PRESET    = 0~%uint8 CONTACT_LIVE      = 1~%~%uint8 type	~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanGraspsGoal>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'planner))
     4 (cl:length (cl:slot-value msg 'search_energy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'search_space))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'search_contact))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanGraspsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanGraspsGoal
    (cl:cons ':graspable_body_id (graspable_body_id msg))
    (cl:cons ':planner (planner msg))
    (cl:cons ':search_energy (search_energy msg))
    (cl:cons ':search_space (search_space msg))
    (cl:cons ':search_contact (search_contact msg))
    (cl:cons ':max_steps (max_steps msg))
))

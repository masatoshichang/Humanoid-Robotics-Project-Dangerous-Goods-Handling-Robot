;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::Grasp)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'Grasp (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GRASP")
  (make-package "GRASPIT_INTERFACE::GRASP"))

(in-package "ROS")
;;//! \htmlinclude Grasp.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TYPE_UNKNOWN*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*TYPE_UNKNOWN* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*TYPE_UNKNOWN* 1)
(intern "*TYPE_FINGERTIP*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*TYPE_FINGERTIP* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*TYPE_FINGERTIP* 2)
(intern "*TYPE_POWER_GRASP*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*TYPE_POWER_GRASP* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*TYPE_POWER_GRASP* 3)
(intern "*TYPE_TABLECONTACT_GRASP*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*TYPE_TABLECONTACT_GRASP* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*TYPE_TABLECONTACT_GRASP* 4)
(intern "*SPREAD_DOF*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*SPREAD_DOF* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*SPREAD_DOF* 0)
(intern "*FINGER_1_DOF*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*FINGER_1_DOF* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*FINGER_1_DOF* 1)
(intern "*FINGER_2_DOF*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*FINGER_2_DOF* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*FINGER_2_DOF* 2)
(intern "*FINGER_3_DOF*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*FINGER_3_DOF* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*FINGER_3_DOF* 3)
(intern "*SOURCE_EIGENGRASPS*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*SOURCE_EIGENGRASPS* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*SOURCE_EIGENGRASPS* 1)
(intern "*SOURCE_HUMAN*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*SOURCE_HUMAN* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*SOURCE_HUMAN* 2)
(intern "*SOURCE_HUMAN_REFINED*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*SOURCE_HUMAN_REFINED* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*SOURCE_HUMAN_REFINED* 3)
(intern "*SOURCE_TABLETOP_ALIGNED*" (find-package "GRASPIT_INTERFACE::GRASP"))
(shadow '*SOURCE_TABLETOP_ALIGNED* (find-package "GRASPIT_INTERFACE::GRASP"))
(defconstant graspit_interface::Grasp::*SOURCE_TABLETOP_ALIGNED* 7)
(defclass graspit_interface::Grasp
  :super ros::object
  :slots (_graspable_body_id _pose _dofs _epsilon_quality _volume_quality _approach_direction _object_name _grasp_id _secondary_qualities _grasp_source _grasp_group _grasp_type _pre_grasp_pose _final_grasp_pose _pre_grasp_dof _final_grasp_dof ))

(defmethod graspit_interface::Grasp
  (:init
   (&key
    ((:graspable_body_id __graspable_body_id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:epsilon_quality __epsilon_quality) 0.0)
    ((:volume_quality __volume_quality) 0.0)
    ((:approach_direction __approach_direction) (instance geometry_msgs::Vector3Stamped :init))
    ((:object_name __object_name) "")
    ((:grasp_id __grasp_id) 0)
    ((:secondary_qualities __secondary_qualities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:grasp_source __grasp_source) 0)
    ((:grasp_group __grasp_group) 0)
    ((:grasp_type __grasp_type) 0)
    ((:pre_grasp_pose __pre_grasp_pose) (instance geometry_msgs::Pose :init))
    ((:final_grasp_pose __final_grasp_pose) (instance geometry_msgs::Pose :init))
    ((:pre_grasp_dof __pre_grasp_dof) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:final_grasp_dof __final_grasp_dof) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _graspable_body_id (round __graspable_body_id))
   (setq _pose __pose)
   (setq _dofs __dofs)
   (setq _epsilon_quality (float __epsilon_quality))
   (setq _volume_quality (float __volume_quality))
   (setq _approach_direction __approach_direction)
   (setq _object_name (string __object_name))
   (setq _grasp_id (round __grasp_id))
   (setq _secondary_qualities __secondary_qualities)
   (setq _grasp_source (round __grasp_source))
   (setq _grasp_group (round __grasp_group))
   (setq _grasp_type (round __grasp_type))
   (setq _pre_grasp_pose __pre_grasp_pose)
   (setq _final_grasp_pose __final_grasp_pose)
   (setq _pre_grasp_dof __pre_grasp_dof)
   (setq _final_grasp_dof __final_grasp_dof)
   self)
  (:graspable_body_id
   (&optional __graspable_body_id)
   (if __graspable_body_id (setq _graspable_body_id __graspable_body_id)) _graspable_body_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:epsilon_quality
   (&optional __epsilon_quality)
   (if __epsilon_quality (setq _epsilon_quality __epsilon_quality)) _epsilon_quality)
  (:volume_quality
   (&optional __volume_quality)
   (if __volume_quality (setq _volume_quality __volume_quality)) _volume_quality)
  (:approach_direction
   (&rest __approach_direction)
   (if (keywordp (car __approach_direction))
       (send* _approach_direction __approach_direction)
     (progn
       (if __approach_direction (setq _approach_direction (car __approach_direction)))
       _approach_direction)))
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:grasp_id
   (&optional __grasp_id)
   (if __grasp_id (setq _grasp_id __grasp_id)) _grasp_id)
  (:secondary_qualities
   (&optional __secondary_qualities)
   (if __secondary_qualities (setq _secondary_qualities __secondary_qualities)) _secondary_qualities)
  (:grasp_source
   (&optional __grasp_source)
   (if __grasp_source (setq _grasp_source __grasp_source)) _grasp_source)
  (:grasp_group
   (&optional __grasp_group)
   (if __grasp_group (setq _grasp_group __grasp_group)) _grasp_group)
  (:grasp_type
   (&optional __grasp_type)
   (if __grasp_type (setq _grasp_type __grasp_type)) _grasp_type)
  (:pre_grasp_pose
   (&rest __pre_grasp_pose)
   (if (keywordp (car __pre_grasp_pose))
       (send* _pre_grasp_pose __pre_grasp_pose)
     (progn
       (if __pre_grasp_pose (setq _pre_grasp_pose (car __pre_grasp_pose)))
       _pre_grasp_pose)))
  (:final_grasp_pose
   (&rest __final_grasp_pose)
   (if (keywordp (car __final_grasp_pose))
       (send* _final_grasp_pose __final_grasp_pose)
     (progn
       (if __final_grasp_pose (setq _final_grasp_pose (car __final_grasp_pose)))
       _final_grasp_pose)))
  (:pre_grasp_dof
   (&optional __pre_grasp_dof)
   (if __pre_grasp_dof (setq _pre_grasp_dof __pre_grasp_dof)) _pre_grasp_dof)
  (:final_grasp_dof
   (&optional __final_grasp_dof)
   (if __final_grasp_dof (setq _final_grasp_dof __final_grasp_dof)) _final_grasp_dof)
  (:serialization-length
   ()
   (+
    ;; int32 _graspable_body_id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[] _dofs
    (* 8    (length _dofs)) 4
    ;; float64 _epsilon_quality
    8
    ;; float64 _volume_quality
    8
    ;; geometry_msgs/Vector3Stamped _approach_direction
    (send _approach_direction :serialization-length)
    ;; string _object_name
    4 (length _object_name)
    ;; int32 _grasp_id
    4
    ;; float64[] _secondary_qualities
    (* 8    (length _secondary_qualities)) 4
    ;; int32 _grasp_source
    4
    ;; int32 _grasp_group
    4
    ;; int32 _grasp_type
    4
    ;; geometry_msgs/Pose _pre_grasp_pose
    (send _pre_grasp_pose :serialization-length)
    ;; geometry_msgs/Pose _final_grasp_pose
    (send _final_grasp_pose :serialization-length)
    ;; float64[] _pre_grasp_dof
    (* 8    (length _pre_grasp_dof)) 4
    ;; float64[] _final_grasp_dof
    (* 8    (length _final_grasp_dof)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _graspable_body_id
       (write-long _graspable_body_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[] _dofs
     (write-long (length _dofs) s)
     (dotimes (i (length _dofs))
       (sys::poke (elt _dofs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _epsilon_quality
       (sys::poke _epsilon_quality (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _volume_quality
       (sys::poke _volume_quality (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3Stamped _approach_direction
       (send _approach_direction :serialize s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; int32 _grasp_id
       (write-long _grasp_id s)
     ;; float64[] _secondary_qualities
     (write-long (length _secondary_qualities) s)
     (dotimes (i (length _secondary_qualities))
       (sys::poke (elt _secondary_qualities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _grasp_source
       (write-long _grasp_source s)
     ;; int32 _grasp_group
       (write-long _grasp_group s)
     ;; int32 _grasp_type
       (write-long _grasp_type s)
     ;; geometry_msgs/Pose _pre_grasp_pose
       (send _pre_grasp_pose :serialize s)
     ;; geometry_msgs/Pose _final_grasp_pose
       (send _final_grasp_pose :serialize s)
     ;; float64[] _pre_grasp_dof
     (write-long (length _pre_grasp_dof) s)
     (dotimes (i (length _pre_grasp_dof))
       (sys::poke (elt _pre_grasp_dof i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _final_grasp_dof
     (write-long (length _final_grasp_dof) s)
     (dotimes (i (length _final_grasp_dof))
       (sys::poke (elt _final_grasp_dof i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _graspable_body_id
     (setq _graspable_body_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[] _dofs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dofs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dofs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _epsilon_quality
     (setq _epsilon_quality (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _volume_quality
     (setq _volume_quality (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3Stamped _approach_direction
     (send _approach_direction :deserialize buf ptr-) (incf ptr- (send _approach_direction :serialization-length))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _grasp_id
     (setq _grasp_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _secondary_qualities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _secondary_qualities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _secondary_qualities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _grasp_source
     (setq _grasp_source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _grasp_group
     (setq _grasp_group (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _grasp_type
     (setq _grasp_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pre_grasp_pose
     (send _pre_grasp_pose :deserialize buf ptr-) (incf ptr- (send _pre_grasp_pose :serialization-length))
   ;; geometry_msgs/Pose _final_grasp_pose
     (send _final_grasp_pose :deserialize buf ptr-) (incf ptr- (send _final_grasp_pose :serialization-length))
   ;; float64[] _pre_grasp_dof
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pre_grasp_dof (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pre_grasp_dof i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _final_grasp_dof
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _final_grasp_dof (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _final_grasp_dof i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get graspit_interface::Grasp :md5sum-) "93371a0db54f716d8aa408e86b086783")
(setf (get graspit_interface::Grasp :datatype-) "graspit_interface/Grasp")
(setf (get graspit_interface::Grasp :definition-)
      "# id for the body the grasp was planned on.
int32 graspable_body_id

# pose of the hand with respect to the object 
# the grasp was planned on
geometry_msgs/Pose pose

float64[] dofs

float64 epsilon_quality
float64 volume_quality

# The approach direction to take before picking an object
geometry_msgs/Vector3Stamped approach_direction

#model_name of object to be grasped
string object_name

int32 grasp_id

float64[] secondary_qualities
int32 grasp_source
int32 grasp_group
int32 grasp_type


geometry_msgs/Pose pre_grasp_pose
geometry_msgs/Pose final_grasp_pose
float64[] pre_grasp_dof
float64[] final_grasp_dof
#geometry_msgs/Pose demonstration_pose

int32 TYPE_UNKNOWN = 1
int32 TYPE_FINGERTIP = 2
int32 TYPE_POWER_GRASP = 3        # free grasp
int32 TYPE_TABLECONTACT_GRASP = 4 # finger will make contact w/ table
int32 SPREAD_DOF=0
int32 FINGER_1_DOF=1
int32 FINGER_2_DOF=2
int32 FINGER_3_DOF=3
int32 SOURCE_EIGENGRASPS=1
int32 SOURCE_HUMAN=2
int32 SOURCE_HUMAN_REFINED=3
int32 SOURCE_TABLETOP_ALIGNED=7


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :graspit_interface/Grasp "93371a0db54f716d8aa408e86b086783")



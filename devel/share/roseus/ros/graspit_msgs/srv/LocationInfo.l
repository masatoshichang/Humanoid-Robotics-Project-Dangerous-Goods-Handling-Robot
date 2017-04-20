;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::LocationInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'LocationInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::LOCATIONINFO")
  (make-package "GRASPIT_MSGS::LOCATIONINFO"))
(unless (find-package "GRASPIT_MSGS::LOCATIONINFOREQUEST")
  (make-package "GRASPIT_MSGS::LOCATIONINFOREQUEST"))
(unless (find-package "GRASPIT_MSGS::LOCATIONINFORESPONSE")
  (make-package "GRASPIT_MSGS::LOCATIONINFORESPONSE"))

(in-package "ROS")





(defclass graspit_msgs::LocationInfoRequest
  :super ros::object
  :slots (_grasp ))

(defmethod graspit_msgs::LocationInfoRequest
  (:init
   (&key
    ((:grasp __grasp) (instance graspit_msgs::Grasp :init))
    )
   (send-super :init)
   (setq _grasp __grasp)
   self)
  (:grasp
   (&rest __grasp)
   (if (keywordp (car __grasp))
       (send* _grasp __grasp)
     (progn
       (if __grasp (setq _grasp (car __grasp)))
       _grasp)))
  (:serialization-length
   ()
   (+
    ;; graspit_msgs/Grasp _grasp
    (send _grasp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; graspit_msgs/Grasp _grasp
       (send _grasp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; graspit_msgs/Grasp _grasp
     (send _grasp :deserialize buf ptr-) (incf ptr- (send _grasp :serialization-length))
   ;;
   self)
  )

(defclass graspit_msgs::LocationInfoResponse
  :super ros::object
  :slots (_isPossible ))

(defmethod graspit_msgs::LocationInfoResponse
  (:init
   (&key
    ((:isPossible __isPossible) nil)
    )
   (send-super :init)
   (setq _isPossible __isPossible)
   self)
  (:isPossible
   (&optional __isPossible)
   (if __isPossible (setq _isPossible __isPossible)) _isPossible)
  (:serialization-length
   ()
   (+
    ;; bool _isPossible
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isPossible
       (if _isPossible (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isPossible
     (setq _isPossible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass graspit_msgs::LocationInfo
  :super ros::object
  :slots ())

(setf (get graspit_msgs::LocationInfo :md5sum-) "2f96671305e2fc9024bbb630a95e1cff")
(setf (get graspit_msgs::LocationInfo :datatype-) "graspit_msgs/LocationInfo")
(setf (get graspit_msgs::LocationInfo :request) graspit_msgs::LocationInfoRequest)
(setf (get graspit_msgs::LocationInfo :response) graspit_msgs::LocationInfoResponse)

(defmethod graspit_msgs::LocationInfoRequest
  (:response () (instance graspit_msgs::LocationInfoResponse :init)))

(setf (get graspit_msgs::LocationInfoRequest :md5sum-) "2f96671305e2fc9024bbb630a95e1cff")
(setf (get graspit_msgs::LocationInfoRequest :datatype-) "graspit_msgs/LocationInfoRequest")
(setf (get graspit_msgs::LocationInfoRequest :definition-)
      "graspit_msgs/Grasp grasp

================================================================================
MSG: graspit_msgs/Grasp
string object_name
float64 epsilon_quality
float64 volume_quality
float64[] secondary_qualities
int32 grasp_source
int32 grasp_group
int32 grasp_type
int32 grasp_id
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
---
bool isPossible
")

(setf (get graspit_msgs::LocationInfoResponse :md5sum-) "2f96671305e2fc9024bbb630a95e1cff")
(setf (get graspit_msgs::LocationInfoResponse :datatype-) "graspit_msgs/LocationInfoResponse")
(setf (get graspit_msgs::LocationInfoResponse :definition-)
      "graspit_msgs/Grasp grasp

================================================================================
MSG: graspit_msgs/Grasp
string object_name
float64 epsilon_quality
float64 volume_quality
float64[] secondary_qualities
int32 grasp_source
int32 grasp_group
int32 grasp_type
int32 grasp_id
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
---
bool isPossible
")



(provide :graspit_msgs/LocationInfo "2f96671305e2fc9024bbb630a95e1cff")



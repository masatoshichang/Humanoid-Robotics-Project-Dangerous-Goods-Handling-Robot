;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::GetObjectInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'GetObjectInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::GETOBJECTINFO")
  (make-package "GRASPIT_MSGS::GETOBJECTINFO"))
(unless (find-package "GRASPIT_MSGS::GETOBJECTINFOREQUEST")
  (make-package "GRASPIT_MSGS::GETOBJECTINFOREQUEST"))
(unless (find-package "GRASPIT_MSGS::GETOBJECTINFORESPONSE")
  (make-package "GRASPIT_MSGS::GETOBJECTINFORESPONSE"))

(in-package "ROS")





(defclass graspit_msgs::GetObjectInfoRequest
  :super ros::object
  :slots ())

(defmethod graspit_msgs::GetObjectInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass graspit_msgs::GetObjectInfoResponse
  :super ros::object
  :slots (_object_info ))

(defmethod graspit_msgs::GetObjectInfoResponse
  (:init
   (&key
    ((:object_info __object_info) (let (r) (dotimes (i 0) (push (instance graspit_msgs::ObjectInfo :init) r)) r))
    )
   (send-super :init)
   (setq _object_info __object_info)
   self)
  (:object_info
   (&rest __object_info)
   (if (keywordp (car __object_info))
       (send* _object_info __object_info)
     (progn
       (if __object_info (setq _object_info (car __object_info)))
       _object_info)))
  (:serialization-length
   ()
   (+
    ;; graspit_msgs/ObjectInfo[] _object_info
    (apply #'+ (send-all _object_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; graspit_msgs/ObjectInfo[] _object_info
     (write-long (length _object_info) s)
     (dolist (elem _object_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; graspit_msgs/ObjectInfo[] _object_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_info (let (r) (dotimes (i n) (push (instance graspit_msgs::ObjectInfo :init) r)) r))
     (dolist (elem- _object_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass graspit_msgs::GetObjectInfo
  :super ros::object
  :slots ())

(setf (get graspit_msgs::GetObjectInfo :md5sum-) "bdc8d8269b448089f6ea6aa337b990f2")
(setf (get graspit_msgs::GetObjectInfo :datatype-) "graspit_msgs/GetObjectInfo")
(setf (get graspit_msgs::GetObjectInfo :request) graspit_msgs::GetObjectInfoRequest)
(setf (get graspit_msgs::GetObjectInfo :response) graspit_msgs::GetObjectInfoResponse)

(defmethod graspit_msgs::GetObjectInfoRequest
  (:response () (instance graspit_msgs::GetObjectInfoResponse :init)))

(setf (get graspit_msgs::GetObjectInfoRequest :md5sum-) "bdc8d8269b448089f6ea6aa337b990f2")
(setf (get graspit_msgs::GetObjectInfoRequest :datatype-) "graspit_msgs/GetObjectInfoRequest")
(setf (get graspit_msgs::GetObjectInfoRequest :definition-)
      "---
ObjectInfo[] object_info

================================================================================
MSG: graspit_msgs/ObjectInfo
string object_name
string model_name
geometry_msgs/Pose object_pose
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
")

(setf (get graspit_msgs::GetObjectInfoResponse :md5sum-) "bdc8d8269b448089f6ea6aa337b990f2")
(setf (get graspit_msgs::GetObjectInfoResponse :datatype-) "graspit_msgs/GetObjectInfoResponse")
(setf (get graspit_msgs::GetObjectInfoResponse :definition-)
      "---
ObjectInfo[] object_info

================================================================================
MSG: graspit_msgs/ObjectInfo
string object_name
string model_name
geometry_msgs/Pose object_pose
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
")



(provide :graspit_msgs/GetObjectInfo "bdc8d8269b448089f6ea6aa337b990f2")



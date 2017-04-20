;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::ObjectInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'ObjectInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::OBJECTINFO")
  (make-package "GRASPIT_MSGS::OBJECTINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass graspit_msgs::ObjectInfo
  :super ros::object
  :slots (_object_name _model_name _object_pose ))

(defmethod graspit_msgs::ObjectInfo
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:model_name __model_name) "")
    ((:object_pose __object_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _model_name (string __model_name))
   (setq _object_pose __object_pose)
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:object_pose
   (&rest __object_pose)
   (if (keywordp (car __object_pose))
       (send* _object_pose __object_pose)
     (progn
       (if __object_pose (setq _object_pose (car __object_pose)))
       _object_pose)))
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; string _model_name
    4 (length _model_name)
    ;; geometry_msgs/Pose _object_pose
    (send _object_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; geometry_msgs/Pose _object_pose
       (send _object_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _object_pose
     (send _object_pose :deserialize buf ptr-) (incf ptr- (send _object_pose :serialization-length))
   ;;
   self)
  )

(setf (get graspit_msgs::ObjectInfo :md5sum-) "b5a871486413e8c1dec23988ebdecc5f")
(setf (get graspit_msgs::ObjectInfo :datatype-) "graspit_msgs/ObjectInfo")
(setf (get graspit_msgs::ObjectInfo :definition-)
      "string object_name
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



(provide :graspit_msgs/ObjectInfo "b5a871486413e8c1dec23988ebdecc5f")



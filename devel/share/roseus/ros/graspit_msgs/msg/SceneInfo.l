;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::SceneInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'SceneInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::SCENEINFO")
  (make-package "GRASPIT_MSGS::SCENEINFO"))

(in-package "ROS")
;;//! \htmlinclude SceneInfo.msg.html


(defclass graspit_msgs::SceneInfo
  :super ros::object
  :slots (_objects ))

(defmethod graspit_msgs::SceneInfo
  (:init
   (&key
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance graspit_msgs::ObjectInfo :init) r)) r))
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; graspit_msgs/ObjectInfo[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; graspit_msgs/ObjectInfo[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; graspit_msgs/ObjectInfo[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance graspit_msgs::ObjectInfo :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get graspit_msgs::SceneInfo :md5sum-) "25f615559301938cf5e6fecbdb4a420c")
(setf (get graspit_msgs::SceneInfo :datatype-) "graspit_msgs/SceneInfo")
(setf (get graspit_msgs::SceneInfo :definition-)
      "graspit_msgs/ObjectInfo[] objects
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



(provide :graspit_msgs/SceneInfo "25f615559301938cf5e6fecbdb4a420c")



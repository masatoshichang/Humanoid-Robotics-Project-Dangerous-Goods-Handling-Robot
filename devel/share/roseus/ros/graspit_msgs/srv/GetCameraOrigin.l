;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::GetCameraOrigin)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'GetCameraOrigin (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::GETCAMERAORIGIN")
  (make-package "GRASPIT_MSGS::GETCAMERAORIGIN"))
(unless (find-package "GRASPIT_MSGS::GETCAMERAORIGINREQUEST")
  (make-package "GRASPIT_MSGS::GETCAMERAORIGINREQUEST"))
(unless (find-package "GRASPIT_MSGS::GETCAMERAORIGINRESPONSE")
  (make-package "GRASPIT_MSGS::GETCAMERAORIGINRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass graspit_msgs::GetCameraOriginRequest
  :super ros::object
  :slots ())

(defmethod graspit_msgs::GetCameraOriginRequest
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

(defclass graspit_msgs::GetCameraOriginResponse
  :super ros::object
  :slots (_camera_pose ))

(defmethod graspit_msgs::GetCameraOriginResponse
  (:init
   (&key
    ((:camera_pose __camera_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _camera_pose __camera_pose)
   self)
  (:camera_pose
   (&rest __camera_pose)
   (if (keywordp (car __camera_pose))
       (send* _camera_pose __camera_pose)
     (progn
       (if __camera_pose (setq _camera_pose (car __camera_pose)))
       _camera_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _camera_pose
    (send _camera_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _camera_pose
       (send _camera_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _camera_pose
     (send _camera_pose :deserialize buf ptr-) (incf ptr- (send _camera_pose :serialization-length))
   ;;
   self)
  )

(defclass graspit_msgs::GetCameraOrigin
  :super ros::object
  :slots ())

(setf (get graspit_msgs::GetCameraOrigin :md5sum-) "2eccb8abb2ccbb1de388429ce1a0fdec")
(setf (get graspit_msgs::GetCameraOrigin :datatype-) "graspit_msgs/GetCameraOrigin")
(setf (get graspit_msgs::GetCameraOrigin :request) graspit_msgs::GetCameraOriginRequest)
(setf (get graspit_msgs::GetCameraOrigin :response) graspit_msgs::GetCameraOriginResponse)

(defmethod graspit_msgs::GetCameraOriginRequest
  (:response () (instance graspit_msgs::GetCameraOriginResponse :init)))

(setf (get graspit_msgs::GetCameraOriginRequest :md5sum-) "2eccb8abb2ccbb1de388429ce1a0fdec")
(setf (get graspit_msgs::GetCameraOriginRequest :datatype-) "graspit_msgs/GetCameraOriginRequest")
(setf (get graspit_msgs::GetCameraOriginRequest :definition-)
      "---
geometry_msgs/Pose camera_pose


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

(setf (get graspit_msgs::GetCameraOriginResponse :md5sum-) "2eccb8abb2ccbb1de388429ce1a0fdec")
(setf (get graspit_msgs::GetCameraOriginResponse :datatype-) "graspit_msgs/GetCameraOriginResponse")
(setf (get graspit_msgs::GetCameraOriginResponse :definition-)
      "---
geometry_msgs/Pose camera_pose


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



(provide :graspit_msgs/GetCameraOrigin "2eccb8abb2ccbb1de388429ce1a0fdec")



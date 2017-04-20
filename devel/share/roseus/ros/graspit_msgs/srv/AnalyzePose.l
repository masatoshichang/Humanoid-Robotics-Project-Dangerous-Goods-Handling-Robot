;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::AnalyzePose)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'AnalyzePose (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::ANALYZEPOSE")
  (make-package "GRASPIT_MSGS::ANALYZEPOSE"))
(unless (find-package "GRASPIT_MSGS::ANALYZEPOSEREQUEST")
  (make-package "GRASPIT_MSGS::ANALYZEPOSEREQUEST"))
(unless (find-package "GRASPIT_MSGS::ANALYZEPOSERESPONSE")
  (make-package "GRASPIT_MSGS::ANALYZEPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass graspit_msgs::AnalyzePoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod graspit_msgs::AnalyzePoseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass graspit_msgs::AnalyzePoseResponse
  :super ros::object
  :slots (_success_probability ))

(defmethod graspit_msgs::AnalyzePoseResponse
  (:init
   (&key
    ((:success_probability __success_probability) 0.0)
    )
   (send-super :init)
   (setq _success_probability (float __success_probability))
   self)
  (:success_probability
   (&optional __success_probability)
   (if __success_probability (setq _success_probability __success_probability)) _success_probability)
  (:serialization-length
   ()
   (+
    ;; float64 _success_probability
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _success_probability
       (sys::poke _success_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _success_probability
     (setq _success_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass graspit_msgs::AnalyzePose
  :super ros::object
  :slots ())

(setf (get graspit_msgs::AnalyzePose :md5sum-) "79041c90ae0e6c55c5cfef12cac63573")
(setf (get graspit_msgs::AnalyzePose :datatype-) "graspit_msgs/AnalyzePose")
(setf (get graspit_msgs::AnalyzePose :request) graspit_msgs::AnalyzePoseRequest)
(setf (get graspit_msgs::AnalyzePose :response) graspit_msgs::AnalyzePoseResponse)

(defmethod graspit_msgs::AnalyzePoseRequest
  (:response () (instance graspit_msgs::AnalyzePoseResponse :init)))

(setf (get graspit_msgs::AnalyzePoseRequest :md5sum-) "79041c90ae0e6c55c5cfef12cac63573")
(setf (get graspit_msgs::AnalyzePoseRequest :datatype-) "graspit_msgs/AnalyzePoseRequest")
(setf (get graspit_msgs::AnalyzePoseRequest :definition-)
      "geometry_msgs/Pose pose

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
float64 success_probability
")

(setf (get graspit_msgs::AnalyzePoseResponse :md5sum-) "79041c90ae0e6c55c5cfef12cac63573")
(setf (get graspit_msgs::AnalyzePoseResponse :datatype-) "graspit_msgs/AnalyzePoseResponse")
(setf (get graspit_msgs::AnalyzePoseResponse :definition-)
      "geometry_msgs/Pose pose

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
float64 success_probability
")



(provide :graspit_msgs/AnalyzePose "79041c90ae0e6c55c5cfef12cac63573")



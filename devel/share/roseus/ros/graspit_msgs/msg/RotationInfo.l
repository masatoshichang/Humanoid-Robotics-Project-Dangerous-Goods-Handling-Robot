;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::RotationInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'RotationInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::ROTATIONINFO")
  (make-package "GRASPIT_MSGS::ROTATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude RotationInfo.msg.html


(defclass graspit_msgs::RotationInfo
  :super ros::object
  :slots (_axis _direction ))

(defmethod graspit_msgs::RotationInfo
  (:init
   (&key
    ((:axis __axis) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _axis (round __axis))
   (setq _direction (round __direction))
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int32 _axis
    4
    ;; int32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _axis
       (write-long _axis s)
     ;; int32 _direction
       (write-long _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _axis
     (setq _axis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get graspit_msgs::RotationInfo :md5sum-) "487430391e4f7bcb6fffca78a6d1435b")
(setf (get graspit_msgs::RotationInfo :datatype-) "graspit_msgs/RotationInfo")
(setf (get graspit_msgs::RotationInfo :definition-)
      "int32 axis
int32 direction

")



(provide :graspit_msgs/RotationInfo "487430391e4f7bcb6fffca78a6d1435b")



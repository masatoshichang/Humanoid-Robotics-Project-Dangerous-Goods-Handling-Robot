;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::ManualInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'ManualInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::MANUALINFO")
  (make-package "GRASPIT_MSGS::MANUALINFO"))

(in-package "ROS")
;;//! \htmlinclude ManualInfo.msg.html


(defclass graspit_msgs::ManualInfo
  :super ros::object
  :slots (_axis _direction ))

(defmethod graspit_msgs::ManualInfo
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

(setf (get graspit_msgs::ManualInfo :md5sum-) "487430391e4f7bcb6fffca78a6d1435b")
(setf (get graspit_msgs::ManualInfo :datatype-) "graspit_msgs/ManualInfo")
(setf (get graspit_msgs::ManualInfo :definition-)
      "int32 axis
int32 direction

")



(provide :graspit_msgs/ManualInfo "487430391e4f7bcb6fffca78a6d1435b")



;; Auto-generated. Do not edit!


(when (boundp 'graspit_msgs::TranslationInfo)
  (if (not (find-package "GRASPIT_MSGS"))
    (make-package "GRASPIT_MSGS"))
  (shadow 'TranslationInfo (find-package "GRASPIT_MSGS")))
(unless (find-package "GRASPIT_MSGS::TRANSLATIONINFO")
  (make-package "GRASPIT_MSGS::TRANSLATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude TranslationInfo.msg.html


(defclass graspit_msgs::TranslationInfo
  :super ros::object
  :slots (_axis _direction ))

(defmethod graspit_msgs::TranslationInfo
  (:init
   (&key
    ((:axis __axis) "")
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _axis (string __axis))
   (setq _direction (string __direction))
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
    ;; string _axis
    4 (length _axis)
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _axis
       (write-long (length _axis) s) (princ _axis s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _axis
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _axis (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get graspit_msgs::TranslationInfo :md5sum-) "29b03e24aa12fc30c591b02baf6c9d8f")
(setf (get graspit_msgs::TranslationInfo :datatype-) "graspit_msgs/TranslationInfo")
(setf (get graspit_msgs::TranslationInfo :definition-)
      "string axis
string direction

")



(provide :graspit_msgs/TranslationInfo "29b03e24aa12fc30c591b02baf6c9d8f")



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


(defclass graspit_interface::Grasp
  :super ros::object
  :slots (_graspable_body_id _pose _dofs _epsilon_quality _volume_quality ))

(defmethod graspit_interface::Grasp
  (:init
   (&key
    ((:graspable_body_id __graspable_body_id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dofs __dofs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:epsilon_quality __epsilon_quality) 0.0)
    ((:volume_quality __volume_quality) 0.0)
    )
   (send-super :init)
   (setq _graspable_body_id (round __graspable_body_id))
   (setq _pose __pose)
   (setq _dofs __dofs)
   (setq _epsilon_quality (float __epsilon_quality))
   (setq _volume_quality (float __volume_quality))
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
   ;;
   self)
  )

(setf (get graspit_interface::Grasp :md5sum-) "58932a8767c4b80df3283b53f1b1b36c")
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



(provide :graspit_interface/Grasp "58932a8767c4b80df3283b53f1b1b36c")



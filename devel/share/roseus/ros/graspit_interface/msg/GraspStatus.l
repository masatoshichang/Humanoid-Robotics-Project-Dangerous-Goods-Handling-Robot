;; Auto-generated. Do not edit!


(when (boundp 'graspit_interface::GraspStatus)
  (if (not (find-package "GRASPIT_INTERFACE"))
    (make-package "GRASPIT_INTERFACE"))
  (shadow 'GraspStatus (find-package "GRASPIT_INTERFACE")))
(unless (find-package "GRASPIT_INTERFACE::GRASPSTATUS")
  (make-package "GRASPIT_INTERFACE::GRASPSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GraspStatus.msg.html


(intern "*FAILED*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*FAILED* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*FAILED* 0)
(intern "*SUCCESS*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*SUCCESS* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*SUCCESS* 1)
(intern "*UNREACHABLE*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*UNREACHABLE* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*UNREACHABLE* 2)
(intern "*OBJECTERROR*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*OBJECTERROR* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*OBJECTERROR* 4)
(intern "*ROBOTERROR*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*ROBOTERROR* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*ROBOTERROR* 8)
(intern "*ENDEFFECTORERROR*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*ENDEFFECTORERROR* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*ENDEFFECTORERROR* 16)
(intern "*GRASPERROR*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*GRASPERROR* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*GRASPERROR* 32)
(intern "*PREGRASPERROR*" (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(shadow '*PREGRASPERROR* (find-package "GRASPIT_INTERFACE::GRASPSTATUS"))
(defconstant graspit_interface::GraspStatus::*PREGRASPERROR* 64)
(defclass graspit_interface::GraspStatus
  :super ros::object
  :slots (_grasp_status _status_msg _grasp_identifier ))

(defmethod graspit_interface::GraspStatus
  (:init
   (&key
    ((:grasp_status __grasp_status) 0)
    ((:status_msg __status_msg) "")
    ((:grasp_identifier __grasp_identifier) 0.0)
    )
   (send-super :init)
   (setq _grasp_status (round __grasp_status))
   (setq _status_msg (string __status_msg))
   (setq _grasp_identifier (float __grasp_identifier))
   self)
  (:grasp_status
   (&optional __grasp_status)
   (if __grasp_status (setq _grasp_status __grasp_status)) _grasp_status)
  (:status_msg
   (&optional __status_msg)
   (if __status_msg (setq _status_msg __status_msg)) _status_msg)
  (:grasp_identifier
   (&optional __grasp_identifier)
   (if __grasp_identifier (setq _grasp_identifier __grasp_identifier)) _grasp_identifier)
  (:serialization-length
   ()
   (+
    ;; uint8 _grasp_status
    1
    ;; string _status_msg
    4 (length _status_msg)
    ;; float64 _grasp_identifier
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _grasp_status
       (write-byte _grasp_status s)
     ;; string _status_msg
       (write-long (length _status_msg) s) (princ _status_msg s)
     ;; float64 _grasp_identifier
       (sys::poke _grasp_identifier (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _grasp_status
     (setq _grasp_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _status_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _grasp_identifier
     (setq _grasp_identifier (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get graspit_interface::GraspStatus :md5sum-) "88d06ce7ea2a1be53f7072dbaa262a0b")
(setf (get graspit_interface::GraspStatus :datatype-) "graspit_interface/GraspStatus")
(setf (get graspit_interface::GraspStatus :definition-)
      "uint8 grasp_status
string status_msg
float64 grasp_identifier
uint8 FAILED = 0
uint8 SUCCESS = 1
uint8 UNREACHABLE = 2
uint8 OBJECTERROR = 4
uint8 ROBOTERROR = 8
uint8 ENDEFFECTORERROR = 16
uint8 GRASPERROR = 32
uint8 PREGRASPERROR = 64

")



(provide :graspit_interface/GraspStatus "88d06ce7ea2a1be53f7072dbaa262a0b")



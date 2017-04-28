;; Auto-generated. Do not edit!


(when (boundp 'fetch_control::CanSeeCube)
  (if (not (find-package "FETCH_CONTROL"))
    (make-package "FETCH_CONTROL"))
  (shadow 'CanSeeCube (find-package "FETCH_CONTROL")))
(unless (find-package "FETCH_CONTROL::CANSEECUBE")
  (make-package "FETCH_CONTROL::CANSEECUBE"))
(unless (find-package "FETCH_CONTROL::CANSEECUBEREQUEST")
  (make-package "FETCH_CONTROL::CANSEECUBEREQUEST"))
(unless (find-package "FETCH_CONTROL::CANSEECUBERESPONSE")
  (make-package "FETCH_CONTROL::CANSEECUBERESPONSE"))

(in-package "ROS")





(defclass fetch_control::CanSeeCubeRequest
  :super ros::object
  :slots ())

(defmethod fetch_control::CanSeeCubeRequest
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

(defclass fetch_control::CanSeeCubeResponse
  :super ros::object
  :slots (_result ))

(defmethod fetch_control::CanSeeCubeResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass fetch_control::CanSeeCube
  :super ros::object
  :slots ())

(setf (get fetch_control::CanSeeCube :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get fetch_control::CanSeeCube :datatype-) "fetch_control/CanSeeCube")
(setf (get fetch_control::CanSeeCube :request) fetch_control::CanSeeCubeRequest)
(setf (get fetch_control::CanSeeCube :response) fetch_control::CanSeeCubeResponse)

(defmethod fetch_control::CanSeeCubeRequest
  (:response () (instance fetch_control::CanSeeCubeResponse :init)))

(setf (get fetch_control::CanSeeCubeRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get fetch_control::CanSeeCubeRequest :datatype-) "fetch_control/CanSeeCubeRequest")
(setf (get fetch_control::CanSeeCubeRequest :definition-)
      "---
int32 result

")

(setf (get fetch_control::CanSeeCubeResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get fetch_control::CanSeeCubeResponse :datatype-) "fetch_control/CanSeeCubeResponse")
(setf (get fetch_control::CanSeeCubeResponse :definition-)
      "---
int32 result

")



(provide :fetch_control/CanSeeCube "034a8e20d6a306665e3a5b340fab3f09")



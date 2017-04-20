
(cl:in-package :asdf)

(defsystem "graspit_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :graspit_msgs-msg
)
  :components ((:file "_package")
    (:file "GetCameraOrigin" :depends-on ("_package_GetCameraOrigin"))
    (:file "_package_GetCameraOrigin" :depends-on ("_package"))
    (:file "LocationInfo" :depends-on ("_package_LocationInfo"))
    (:file "_package_LocationInfo" :depends-on ("_package"))
    (:file "GraspSrv" :depends-on ("_package_GraspSrv"))
    (:file "_package_GraspSrv" :depends-on ("_package"))
    (:file "GetObjectInfo" :depends-on ("_package_GetObjectInfo"))
    (:file "_package_GetObjectInfo" :depends-on ("_package"))
    (:file "AnalyzePose" :depends-on ("_package_AnalyzePose"))
    (:file "_package_AnalyzePose" :depends-on ("_package"))
  ))
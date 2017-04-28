
(cl:in-package :asdf)

(defsystem "fetch_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CanSeeCube" :depends-on ("_package_CanSeeCube"))
    (:file "_package_CanSeeCube" :depends-on ("_package"))
  ))
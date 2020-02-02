
(cl:in-package :asdf)

(defsystem "add_markers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PositionAction" :depends-on ("_package_PositionAction"))
    (:file "_package_PositionAction" :depends-on ("_package"))
  ))
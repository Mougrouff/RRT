
(cl:in-package :asdf)

(defsystem "planification-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "Occupancy" :depends-on ("_package_Occupancy"))
    (:file "_package_Occupancy" :depends-on ("_package"))
  ))
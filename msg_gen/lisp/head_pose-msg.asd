
(cl:in-package :asdf)

(defsystem "head_pose-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "head_data" :depends-on ("_package_head_data"))
    (:file "_package_head_data" :depends-on ("_package"))
  ))
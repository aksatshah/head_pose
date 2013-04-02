; Auto-generated. Do not edit!


(cl:in-package head_pose-msg)


;//! \htmlinclude head_data.msg.html

(cl:defclass <head_data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x_center
    :reader x_center
    :initarg :x_center
    :type cl:float
    :initform 0.0)
   (y_center
    :reader y_center
    :initarg :y_center
    :type cl:float
    :initform 0.0)
   (z_center
    :reader z_center
    :initarg :z_center
    :type cl:float
    :initform 0.0)
   (x_front
    :reader x_front
    :initarg :x_front
    :type cl:float
    :initform 0.0)
   (y_front
    :reader y_front
    :initarg :y_front
    :type cl:float
    :initform 0.0)
   (z_front
    :reader z_front
    :initarg :z_front
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass head_data (<head_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <head_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'head_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name head_pose-msg:<head_data> is deprecated: use head_pose-msg:head_data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:header-val is deprecated.  Use head_pose-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x_center-val :lambda-list '(m))
(cl:defmethod x_center-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:x_center-val is deprecated.  Use head_pose-msg:x_center instead.")
  (x_center m))

(cl:ensure-generic-function 'y_center-val :lambda-list '(m))
(cl:defmethod y_center-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:y_center-val is deprecated.  Use head_pose-msg:y_center instead.")
  (y_center m))

(cl:ensure-generic-function 'z_center-val :lambda-list '(m))
(cl:defmethod z_center-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:z_center-val is deprecated.  Use head_pose-msg:z_center instead.")
  (z_center m))

(cl:ensure-generic-function 'x_front-val :lambda-list '(m))
(cl:defmethod x_front-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:x_front-val is deprecated.  Use head_pose-msg:x_front instead.")
  (x_front m))

(cl:ensure-generic-function 'y_front-val :lambda-list '(m))
(cl:defmethod y_front-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:y_front-val is deprecated.  Use head_pose-msg:y_front instead.")
  (y_front m))

(cl:ensure-generic-function 'z_front-val :lambda-list '(m))
(cl:defmethod z_front-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:z_front-val is deprecated.  Use head_pose-msg:z_front instead.")
  (z_front m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:roll-val is deprecated.  Use head_pose-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:pitch-val is deprecated.  Use head_pose-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <head_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader head_pose-msg:yaw-val is deprecated.  Use head_pose-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <head_data>) ostream)
  "Serializes a message object of type '<head_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <head_data>) istream)
  "Deserializes a message object of type '<head_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_center) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_center) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_center) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<head_data>)))
  "Returns string type for a message object of type '<head_data>"
  "head_pose/head_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'head_data)))
  "Returns string type for a message object of type 'head_data"
  "head_pose/head_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<head_data>)))
  "Returns md5sum for a message object of type '<head_data>"
  "057919f3c630fce60c12d3002220a7f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'head_data)))
  "Returns md5sum for a message object of type 'head_data"
  "057919f3c630fce60c12d3002220a7f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<head_data>)))
  "Returns full string definition for message of type '<head_data>"
  (cl:format cl:nil "Header header~%~%#Coordinates of the Head Pose as well as roll/pitch/yaw~%float32 x_center~%float32 y_center~%float32 z_center~%~%~%float32 x_front~%float32 y_front ~%float32 z_front~%~%~%float32 roll~%float32 pitch~%float32 yaw~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'head_data)))
  "Returns full string definition for message of type 'head_data"
  (cl:format cl:nil "Header header~%~%#Coordinates of the Head Pose as well as roll/pitch/yaw~%float32 x_center~%float32 y_center~%float32 z_center~%~%~%float32 x_front~%float32 y_front ~%float32 z_front~%~%~%float32 roll~%float32 pitch~%float32 yaw~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <head_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <head_data>))
  "Converts a ROS message object to a list"
  (cl:list 'head_data
    (cl:cons ':header (header msg))
    (cl:cons ':x_center (x_center msg))
    (cl:cons ':y_center (y_center msg))
    (cl:cons ':z_center (z_center msg))
    (cl:cons ':x_front (x_front msg))
    (cl:cons ':y_front (y_front msg))
    (cl:cons ':z_front (z_front msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))

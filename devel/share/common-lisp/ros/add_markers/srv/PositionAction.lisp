; Auto-generated. Do not edit!


(cl:in-package add_markers-srv)


;//! \htmlinclude PositionAction-request.msg.html

(cl:defclass <PositionAction-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0))
)

(cl:defclass PositionAction-request (<PositionAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<PositionAction-request> is deprecated: use add_markers-srv:PositionAction-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PositionAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:action-val is deprecated.  Use add_markers-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionAction-request>) ostream)
  "Serializes a message object of type '<PositionAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionAction-request>) istream)
  "Deserializes a message object of type '<PositionAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionAction-request>)))
  "Returns string type for a service object of type '<PositionAction-request>"
  "add_markers/PositionActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAction-request)))
  "Returns string type for a service object of type 'PositionAction-request"
  "add_markers/PositionActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionAction-request>)))
  "Returns md5sum for a message object of type '<PositionAction-request>"
  "4980732f18a499f52b643a6dd94ab4b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionAction-request)))
  "Returns md5sum for a message object of type 'PositionAction-request"
  "4980732f18a499f52b643a6dd94ab4b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionAction-request>)))
  "Returns full string definition for message of type '<PositionAction-request>"
  (cl:format cl:nil "uint32 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionAction-request)))
  "Returns full string definition for message of type 'PositionAction-request"
  (cl:format cl:nil "uint32 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionAction-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionAction-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude PositionAction-response.msg.html

(cl:defclass <PositionAction-response> (roslisp-msg-protocol:ros-message)
  ((msg_feedback
    :reader msg_feedback
    :initarg :msg_feedback
    :type cl:string
    :initform ""))
)

(cl:defclass PositionAction-response (<PositionAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<PositionAction-response> is deprecated: use add_markers-srv:PositionAction-response instead.")))

(cl:ensure-generic-function 'msg_feedback-val :lambda-list '(m))
(cl:defmethod msg_feedback-val ((m <PositionAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:msg_feedback-val is deprecated.  Use add_markers-srv:msg_feedback instead.")
  (msg_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionAction-response>) ostream)
  "Serializes a message object of type '<PositionAction-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg_feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionAction-response>) istream)
  "Deserializes a message object of type '<PositionAction-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg_feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionAction-response>)))
  "Returns string type for a service object of type '<PositionAction-response>"
  "add_markers/PositionActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAction-response)))
  "Returns string type for a service object of type 'PositionAction-response"
  "add_markers/PositionActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionAction-response>)))
  "Returns md5sum for a message object of type '<PositionAction-response>"
  "4980732f18a499f52b643a6dd94ab4b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionAction-response)))
  "Returns md5sum for a message object of type 'PositionAction-response"
  "4980732f18a499f52b643a6dd94ab4b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionAction-response>)))
  "Returns full string definition for message of type '<PositionAction-response>"
  (cl:format cl:nil "string msg_feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionAction-response)))
  "Returns full string definition for message of type 'PositionAction-response"
  (cl:format cl:nil "string msg_feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionAction-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionAction-response
    (cl:cons ':msg_feedback (msg_feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionAction)))
  'PositionAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionAction)))
  'PositionAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAction)))
  "Returns string type for a service object of type '<PositionAction>"
  "add_markers/PositionAction")
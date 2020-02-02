;; Auto-generated. Do not edit!


(when (boundp 'add_markers::PositionAction)
  (if (not (find-package "ADD_MARKERS"))
    (make-package "ADD_MARKERS"))
  (shadow 'PositionAction (find-package "ADD_MARKERS")))
(unless (find-package "ADD_MARKERS::POSITIONACTION")
  (make-package "ADD_MARKERS::POSITIONACTION"))
(unless (find-package "ADD_MARKERS::POSITIONACTIONREQUEST")
  (make-package "ADD_MARKERS::POSITIONACTIONREQUEST"))
(unless (find-package "ADD_MARKERS::POSITIONACTIONRESPONSE")
  (make-package "ADD_MARKERS::POSITIONACTIONRESPONSE"))

(in-package "ROS")





(defclass add_markers::PositionActionRequest
  :super ros::object
  :slots (_action ))

(defmethod add_markers::PositionActionRequest
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; uint32 _action
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _action
       (write-long _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass add_markers::PositionActionResponse
  :super ros::object
  :slots (_msg_feedback ))

(defmethod add_markers::PositionActionResponse
  (:init
   (&key
    ((:msg_feedback __msg_feedback) "")
    )
   (send-super :init)
   (setq _msg_feedback (string __msg_feedback))
   self)
  (:msg_feedback
   (&optional __msg_feedback)
   (if __msg_feedback (setq _msg_feedback __msg_feedback)) _msg_feedback)
  (:serialization-length
   ()
   (+
    ;; string _msg_feedback
    4 (length _msg_feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg_feedback
       (write-long (length _msg_feedback) s) (princ _msg_feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg_feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass add_markers::PositionAction
  :super ros::object
  :slots ())

(setf (get add_markers::PositionAction :md5sum-) "4980732f18a499f52b643a6dd94ab4b6")
(setf (get add_markers::PositionAction :datatype-) "add_markers/PositionAction")
(setf (get add_markers::PositionAction :request) add_markers::PositionActionRequest)
(setf (get add_markers::PositionAction :response) add_markers::PositionActionResponse)

(defmethod add_markers::PositionActionRequest
  (:response () (instance add_markers::PositionActionResponse :init)))

(setf (get add_markers::PositionActionRequest :md5sum-) "4980732f18a499f52b643a6dd94ab4b6")
(setf (get add_markers::PositionActionRequest :datatype-) "add_markers/PositionActionRequest")
(setf (get add_markers::PositionActionRequest :definition-)
      "uint32 action
---
string msg_feedback

")

(setf (get add_markers::PositionActionResponse :md5sum-) "4980732f18a499f52b643a6dd94ab4b6")
(setf (get add_markers::PositionActionResponse :datatype-) "add_markers/PositionActionResponse")
(setf (get add_markers::PositionActionResponse :definition-)
      "uint32 action
---
string msg_feedback

")



(provide :add_markers/PositionAction "4980732f18a499f52b643a6dd94ab4b6")



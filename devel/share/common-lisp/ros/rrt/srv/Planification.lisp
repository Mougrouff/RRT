; Auto-generated. Do not edit!


(cl:in-package rrt-srv)


;//! \htmlinclude Planification-request.msg.html

(cl:defclass <Planification-request> (roslisp-msg-protocol:ros-message)
  ((occupancy
    :reader occupancy
    :initarg :occupancy
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass Planification-request (<Planification-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Planification-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Planification-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rrt-srv:<Planification-request> is deprecated: use rrt-srv:Planification-request instead.")))

(cl:ensure-generic-function 'occupancy-val :lambda-list '(m))
(cl:defmethod occupancy-val ((m <Planification-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrt-srv:occupancy-val is deprecated.  Use rrt-srv:occupancy instead.")
  (occupancy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Planification-request>) ostream)
  "Serializes a message object of type '<Planification-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occupancy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Planification-request>) istream)
  "Deserializes a message object of type '<Planification-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occupancy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Planification-request>)))
  "Returns string type for a service object of type '<Planification-request>"
  "rrt/PlanificationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planification-request)))
  "Returns string type for a service object of type 'Planification-request"
  "rrt/PlanificationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Planification-request>)))
  "Returns md5sum for a message object of type '<Planification-request>"
  "6d863302adc092d6268a262350f4724e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Planification-request)))
  "Returns md5sum for a message object of type 'Planification-request"
  "6d863302adc092d6268a262350f4724e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Planification-request>)))
  "Returns full string definition for message of type '<Planification-request>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid occupancy~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Planification-request)))
  "Returns full string definition for message of type 'Planification-request"
  (cl:format cl:nil "nav_msgs/OccupancyGrid occupancy~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Planification-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occupancy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Planification-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Planification-request
    (cl:cons ':occupancy (occupancy msg))
))
;//! \htmlinclude Planification-response.msg.html

(cl:defclass <Planification-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass Planification-response (<Planification-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Planification-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Planification-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rrt-srv:<Planification-response> is deprecated: use rrt-srv:Planification-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Planification-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rrt-srv:path-val is deprecated.  Use rrt-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Planification-response>) ostream)
  "Serializes a message object of type '<Planification-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Planification-response>) istream)
  "Deserializes a message object of type '<Planification-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Planification-response>)))
  "Returns string type for a service object of type '<Planification-response>"
  "rrt/PlanificationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planification-response)))
  "Returns string type for a service object of type 'Planification-response"
  "rrt/PlanificationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Planification-response>)))
  "Returns md5sum for a message object of type '<Planification-response>"
  "6d863302adc092d6268a262350f4724e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Planification-response)))
  "Returns md5sum for a message object of type 'Planification-response"
  "6d863302adc092d6268a262350f4724e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Planification-response>)))
  "Returns full string definition for message of type '<Planification-response>"
  (cl:format cl:nil "nav_msgs/Path path~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Planification-response)))
  "Returns full string definition for message of type 'Planification-response"
  (cl:format cl:nil "nav_msgs/Path path~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Planification-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Planification-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Planification-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Planification)))
  'Planification-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Planification)))
  'Planification-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planification)))
  "Returns string type for a service object of type '<Planification>"
  "rrt/Planification")
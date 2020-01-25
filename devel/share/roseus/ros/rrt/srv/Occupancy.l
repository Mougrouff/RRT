;; Auto-generated. Do not edit!


(when (boundp 'rrt::Occupancy)
  (if (not (find-package "RRT"))
    (make-package "RRT"))
  (shadow 'Occupancy (find-package "RRT")))
(unless (find-package "RRT::OCCUPANCY")
  (make-package "RRT::OCCUPANCY"))
(unless (find-package "RRT::OCCUPANCYREQUEST")
  (make-package "RRT::OCCUPANCYREQUEST"))
(unless (find-package "RRT::OCCUPANCYRESPONSE")
  (make-package "RRT::OCCUPANCYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass rrt::OccupancyRequest
  :super ros::object
  :slots (_pose _occupancy ))

(defmethod rrt::OccupancyRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Point :init))
    ((:occupancy __occupancy) (instance nav_msgs::OccupancyGrid :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _occupancy __occupancy)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:occupancy
   (&rest __occupancy)
   (if (keywordp (car __occupancy))
       (send* _occupancy __occupancy)
     (progn
       (if __occupancy (setq _occupancy (car __occupancy)))
       _occupancy)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pose
    (send _pose :serialization-length)
    ;; nav_msgs/OccupancyGrid _occupancy
    (send _occupancy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pose
       (send _pose :serialize s)
     ;; nav_msgs/OccupancyGrid _occupancy
       (send _occupancy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; nav_msgs/OccupancyGrid _occupancy
     (send _occupancy :deserialize buf ptr-) (incf ptr- (send _occupancy :serialization-length))
   ;;
   self)
  )

(defclass rrt::OccupancyResponse
  :super ros::object
  :slots (_path ))

(defmethod rrt::OccupancyResponse
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass rrt::Occupancy
  :super ros::object
  :slots ())

(setf (get rrt::Occupancy :md5sum-) "749473d2fd96a6f0862babbe2b5b4470")
(setf (get rrt::Occupancy :datatype-) "rrt/Occupancy")
(setf (get rrt::Occupancy :request) rrt::OccupancyRequest)
(setf (get rrt::Occupancy :response) rrt::OccupancyResponse)

(defmethod rrt::OccupancyRequest
  (:response () (instance rrt::OccupancyResponse :init)))

(setf (get rrt::OccupancyRequest :md5sum-) "749473d2fd96a6f0862babbe2b5b4470")
(setf (get rrt::OccupancyRequest :datatype-) "rrt/OccupancyRequest")
(setf (get rrt::OccupancyRequest :definition-)
      "geometry_msgs/Point pose
nav_msgs/OccupancyGrid occupancy

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
nav_msgs/Path path


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get rrt::OccupancyResponse :md5sum-) "749473d2fd96a6f0862babbe2b5b4470")
(setf (get rrt::OccupancyResponse :datatype-) "rrt/OccupancyResponse")
(setf (get rrt::OccupancyResponse :definition-)
      "geometry_msgs/Point pose
nav_msgs/OccupancyGrid occupancy

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
nav_msgs/Path path


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :rrt/Occupancy "749473d2fd96a6f0862babbe2b5b4470")



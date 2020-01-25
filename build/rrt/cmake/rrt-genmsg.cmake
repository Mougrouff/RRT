# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rrt: 0 messages, 1 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rrt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" NAME_WE)
add_custom_target(_rrt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rrt" "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" "nav_msgs/MapMetaData:nav_msgs/Path:geometry_msgs/Pose:nav_msgs/OccupancyGrid:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rrt
  "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rrt
)

### Generating Module File
_generate_module_cpp(rrt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rrt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rrt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rrt_generate_messages rrt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" NAME_WE)
add_dependencies(rrt_generate_messages_cpp _rrt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rrt_gencpp)
add_dependencies(rrt_gencpp rrt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rrt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rrt
  "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rrt
)

### Generating Module File
_generate_module_eus(rrt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rrt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rrt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rrt_generate_messages rrt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" NAME_WE)
add_dependencies(rrt_generate_messages_eus _rrt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rrt_geneus)
add_dependencies(rrt_geneus rrt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rrt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rrt
  "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rrt
)

### Generating Module File
_generate_module_lisp(rrt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rrt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rrt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rrt_generate_messages rrt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" NAME_WE)
add_dependencies(rrt_generate_messages_lisp _rrt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rrt_genlisp)
add_dependencies(rrt_genlisp rrt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rrt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rrt
  "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rrt
)

### Generating Module File
_generate_module_nodejs(rrt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rrt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rrt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rrt_generate_messages rrt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" NAME_WE)
add_dependencies(rrt_generate_messages_nodejs _rrt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rrt_gennodejs)
add_dependencies(rrt_gennodejs rrt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rrt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rrt
  "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rrt
)

### Generating Module File
_generate_module_py(rrt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rrt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rrt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rrt_generate_messages rrt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xanthor/Programmes/ROS/src/rrt/srv/Occupancy.srv" NAME_WE)
add_dependencies(rrt_generate_messages_py _rrt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rrt_genpy)
add_dependencies(rrt_genpy rrt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rrt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rrt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rrt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(rrt_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rrt_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rrt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rrt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(rrt_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rrt_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rrt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rrt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(rrt_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rrt_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rrt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rrt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(rrt_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rrt_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rrt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rrt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rrt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(rrt_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rrt_generate_messages_py geometry_msgs_generate_messages_py)
endif()

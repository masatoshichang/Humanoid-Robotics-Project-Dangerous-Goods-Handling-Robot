cmake_minimum_required(VERSION 2.8.3)
project(fetch_gazebo_demo2)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)
catkin_package()

install(
  PROGRAMS
    scripts/demo.py
    scripts/pick_place_demo.py
    scripts/test2.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)


find_package(PCL 1.2 REQUIRED COMPONENTS common io)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
add_executable(pointcloud scripts/pointcloud.cpp)
target_link_libraries(pointcloud ${catkin_LIBRARIES} ${PCL_COMMON_LIBRARIES} ${PCL_IO_LIBRARIES}  ${PCL_LIBRARIES})
add_dependencies(pointcloud pointcloud_cpp)

install(
  DIRECTORY launch maps config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

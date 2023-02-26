# CMake generated Testfile for 
# Source directory: /root/ros2_testing/src/ros2_canopen/canopen_ros2_controllers
# Build directory: /root/ros2_testing/build/canopen_ros2_controllers
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_load_canopen_proxy_controller "/usr/bin/python3.10" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/root/ros2_testing/build/canopen_ros2_controllers/test_results/canopen_ros2_controllers/test_load_canopen_proxy_controller.gtest.xml" "--package-name" "canopen_ros2_controllers" "--output-file" "/root/ros2_testing/build/canopen_ros2_controllers/ament_cmake_gmock/test_load_canopen_proxy_controller.txt" "--command" "/root/ros2_testing/build/canopen_ros2_controllers/test_load_canopen_proxy_controller" "--gtest_output=xml:/root/ros2_testing/build/canopen_ros2_controllers/test_results/canopen_ros2_controllers/test_load_canopen_proxy_controller.gtest.xml")
set_tests_properties(test_load_canopen_proxy_controller PROPERTIES  LABELS "gmock" REQUIRED_FILES "/root/ros2_testing/build/canopen_ros2_controllers/test_load_canopen_proxy_controller" TIMEOUT "60" WORKING_DIRECTORY "/root/ros2_testing/build/canopen_ros2_controllers" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/humble/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/root/ros2_testing/src/ros2_canopen/canopen_ros2_controllers/CMakeLists.txt;57;ament_add_gmock;/root/ros2_testing/src/ros2_canopen/canopen_ros2_controllers/CMakeLists.txt;0;")
add_test(test_canopen_proxy_controller "/usr/bin/python3.10" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/root/ros2_testing/build/canopen_ros2_controllers/test_results/canopen_ros2_controllers/test_canopen_proxy_controller.gtest.xml" "--package-name" "canopen_ros2_controllers" "--output-file" "/root/ros2_testing/build/canopen_ros2_controllers/ament_cmake_gmock/test_canopen_proxy_controller.txt" "--command" "/root/ros2_testing/build/canopen_ros2_controllers/test_canopen_proxy_controller" "--gtest_output=xml:/root/ros2_testing/build/canopen_ros2_controllers/test_results/canopen_ros2_controllers/test_canopen_proxy_controller.gtest.xml")
set_tests_properties(test_canopen_proxy_controller PROPERTIES  LABELS "gmock" REQUIRED_FILES "/root/ros2_testing/build/canopen_ros2_controllers/test_canopen_proxy_controller" TIMEOUT "60" WORKING_DIRECTORY "/root/ros2_testing/build/canopen_ros2_controllers" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/humble/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/root/ros2_testing/src/ros2_canopen/canopen_ros2_controllers/CMakeLists.txt;67;ament_add_gmock;/root/ros2_testing/src/ros2_canopen/canopen_ros2_controllers/CMakeLists.txt;0;")
subdirs("gmock")
subdirs("gtest")

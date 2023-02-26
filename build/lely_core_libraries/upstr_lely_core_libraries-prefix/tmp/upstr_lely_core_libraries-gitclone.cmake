
if(NOT "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries-stamp/upstr_lely_core_libraries-gitinfo.txt" IS_NEWER_THAN "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries-stamp/upstr_lely_core_libraries-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries-stamp/upstr_lely_core_libraries-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://gitlab.com/lely_industries/lely-core.git" "upstr_lely_core_libraries"
    WORKING_DIRECTORY "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://gitlab.com/lely_industries/lely-core.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout ac31cd5cdf2ded4b2a5ba4a94520f388450614ff --
  WORKING_DIRECTORY "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'ac31cd5cdf2ded4b2a5ba4a94520f388450614ff'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries-stamp/upstr_lely_core_libraries-gitinfo.txt"
    "/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries-stamp/upstr_lely_core_libraries-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/root/ros2_testing/build/lely_core_libraries/upstr_lely_core_libraries-prefix/src/upstr_lely_core_libraries-stamp/upstr_lely_core_libraries-gitclone-lastrun.txt'")
endif()


project(boosttest)
add_executable(
  boosttest
  main.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/c_regex_traits.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/cpp_regex_traits.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/cregex.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/fileiter.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/icu.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/instances.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/posix_api.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/regex.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/regex_debug.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/regex_raw_buffer.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/regex_traits_defaults.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/static_mutex.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/usinstances.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/w32_regex_traits.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/wc_regex_traits.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/wide_posix_api.cpp
  ${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0/libs/regex/src/winstances.cpp
)
SET(CMAKE_EXECUTABLE_SUFFIX ".html")
include_directories(${CMAKE_SOURCE_DIR}/buildBoost/boost_1_56_0)

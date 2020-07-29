project(boosttest)
add_executable(boosttest main.cpp)
SET(CMAKE_EXECUTABLE_SUFFIX ".html")
target_link_libraries(boosttest "${CMAKE_SOURCE_DIR}/buildBoost/boost_1_73_0/bin.v2/libs/regex/build/emscripten-1.39.20/release/visibility-hidden/libboost_regex.a")

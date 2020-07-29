project(boosttest)
add_executable(boosttest main.cpp)
SET(CMAKE_EXECUTABLE_SUFFIX ".html")
set_target_properties(boosttest PROPERTIES COMPILE_FLAGS "-s USE_BOOST_HEADERS=1" LINK_FLAGS "-s USE_BOOST_HEADERS=1")

cmake_minimum_required(VERSION 2.6)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)





if("${BUILD_TYPE}" STREQUAL "APP")
    set(TARGET_NAME "runApp")
    set(APP_DIR  "${CMAKE_CURRENT_SOURCE_DIR}/Application")
else()
    set(TARGET_NAME "runTests")
    set(GTEST_DIR  "${CMAKE_CURRENT_SOURCE_DIR}/converter/test")

    find_package(GTest REQUIRED)
    include_directories(${GTEST_INCLUDE_DIRS})

endif()



#Subdirectory Add
add_subdirectory(converter/src)


if("${BUILD_TYPE}" STREQUAL "APP")
    add_executable(${TARGET_NAME} ${APP_DIR}/main.cpp)
else()
    add_executable(${TARGET_NAME} ${GTEST_DIR}/tests.cpp)
    target_link_libraries(${TARGET_NAME} ${GTEST_LIBRARIES} pthread)
endif()


target_link_libraries(${TARGET_NAME} Converter)
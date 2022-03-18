
FILE(GLOB inFiles RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}"
"${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
"${CMAKE_CURRENT_SOURCE_DIR}/*.h")

#############

add_library(Converter ${inFiles})
target_include_directories(Converter PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

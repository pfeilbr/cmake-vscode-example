cmake_minimum_required(VERSION 3.0.0)
project(example VERSION 0.1.0)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(CTest)
enable_testing()

add_executable(example main.cpp)

find_package (sqlite3)
if (SQLITE3_FOUND)
  include_directories(${SQLITE3_INCLUDE_DIRS})
  target_link_libraries (example ${SQLITE3_LIBRARIES})
endif (SQLITE3_FOUND)

find_package(SFML 2 COMPONENTS audio graphics window system network)
include_directories(${SFML_INCLUDE_DIR})
target_link_libraries(example ${SFML_LIBRARIES} ${SFML_DEPENDENCIES})

find_package(SDL2)
include_directories(${SDL2_INCLUDE_DIR})
target_link_libraries(example ${SDL2_LIBRARY})

find_package(GLFW)
include_directories(${GLFW_INCLUDE_DIR})
target_link_libraries(example ${GLFW_LIBRARIES})

find_package(opengl)
include_directories(${OPENGL_INCLUDE_DIR})
target_link_libraries(example ${OPENGL_LIBRARIES})


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

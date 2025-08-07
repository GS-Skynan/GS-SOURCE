cmake_minimum_required(VERSION 3.21)
project(cmake_project_template)


SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcpu=cortex-m0plus")
add_compile_definitions(
    PUBLIC
    STM32C051xx
    USE_HAL_DRIVER
)
#add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/drivers/utils EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/drivers/peripherials EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/drivers/bsp EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/drivers/Components/st25dvxxkc EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/drivers/Components/M24xx EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/application/cmsis EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/application/mcal EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/utils EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/boot/cmsis EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/middleware/ProtoThread EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/middleware/SEGGER_RTT_V826 EXCLUDE_FROM_ALL)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/boot)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/application/app)

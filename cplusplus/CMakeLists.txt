cmake_minimum_required(VERSION 3.31)
project(shapes VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include_directories(include)

file(GLOB SHAPES_SOURCES
    src/base/**/*.cpp
    src/client/**/*.cpp
)

add_library(shapes_shared SHARED ${SHAPES_SOURCES})
target_include_directories(shapes_shared PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)
set_target_properties(shapes_shared PROPERTIES
    OUTPUT_NAME "shapes"
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
)

add_library(shapes_static STATIC ${SHAPES_SOURCES})
target_include_directories(shapes_static PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)
set_target_properties(shapes_static PROPERTIES
    OUTPUT_NAME "shapes"
    POSITION_INDEPENDENT_CODE ON
)

add_executable(shapes_app src/app/main.cpp)

if(NOT MSVC)
    message(STATUS "Linking to stdc++exp for GCC/Clang.")
    # for std::println and std::print
    target_link_libraries(shapes_shared PRIVATE stdc++exp)
    target_link_libraries(shapes_static PRIVATE stdc++exp)
    target_link_libraries(shapes_app shapes_static stdc++exp)
else()
    message(STATUS "Not linking to stdc++exp for MSVC.")
    target_link_libraries(shapes_app shapes_static)
endif()

# Installation rules
install(TARGETS shapes_static shapes_shared shapes_app
    EXPORT shapesTargets
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

install(DIRECTORY include DESTINATION include)

# Check if the compiler is MSVC
if(NOT MSVC)
    find_package(GTest REQUIRED)
    enable_testing()
    add_test(NAME ShapesTests COMMAND shapes_tests)

    file(GLOB TEST_SOURCES
        tests/fixtures/*.hpp
        tests/*.cpp
    )

    add_executable(shapes_tests ${TEST_SOURCES})

    target_link_libraries(shapes_tests GTest::GTest GTest::Main shapes_static stdc++exp)

    add_custom_target(runtests
        COMMAND shapes_tests
        DEPENDS shapes_tests
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        COMMENT "Running the shapes tests"
    )
else()
    message(STATUS "Skipping Google Test setup and test targets for MSVC.")
endif()

add_custom_target(run
    COMMAND shapes_app
    DEPENDS shapes_app
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    COMMENT "Running the shapes application"
)

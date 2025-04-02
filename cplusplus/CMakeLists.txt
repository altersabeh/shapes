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

    # Commons Tests
    file(GLOB COMMONS_TEST_SOURCES
        tests/fixtures/commons/*.hpp
        tests/commons*.cpp
    )

    add_executable(commons_test ${COMMONS_TEST_SOURCES})
    target_link_libraries(commons_test GTest::GTest GTest::Main shapes_static stdc++exp)

    add_test(NAME CommonsTests COMMAND commons_test)

    # Models Tests
    file(GLOB MODELS_TEST_SOURCES
        tests/fixtures/*.hpp
        tests/models*.cpp
    )

    add_executable(models_test ${MODELS_TEST_SOURCES})
    target_link_libraries(models_test GTest::GTest GTest::Main shapes_static stdc++exp)

    add_test(NAME ModelsTests COMMAND models_test)

    # Custom target to run all tests
    add_custom_target(runtests
        COMMAND commons_test && models_test
        DEPENDS commons_test models_test
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        COMMENT "Running all tests"
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

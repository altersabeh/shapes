cmake_minimum_required(VERSION 3.31)
project(shapes VERSION 1.0.0 LANGUAGES CXX)

# === Build settings ===
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include_directories(include)

# === Source files ===
file(GLOB_RECURSE SHAPES_SOURCES
    src/base/**/*.cpp
    src/client/**/*.cpp
)

# === Helper function for stdc++exp linking (for std::print) ===
function(link_stdcxxexp target)
    if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
        message(STATUS "GCC detected: linking ${target} with stdc++exp.")
        target_link_libraries(${target} PRIVATE stdc++exp)
    elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
        if(DEFINED ENV{MSYSTEM})
            if("$ENV{MSYSTEM}" STREQUAL "UCRT64")
                message(STATUS "Clang MSYSTEM=UCRT64: linking ${target} with stdc++exp.")
                target_link_libraries(${target} PRIVATE stdc++exp)
            else()
                message(STATUS "Clang MSYSTEM=$ENV{MSYSTEM}: not linking ${target} with stdc++exp.")
            endif()
        else()
            message(WARNING "MSYSTEM not set: not linking ${target} with stdc++exp.")
        endif()
    else()
        message(STATUS "Unknown or MSVC compiler: no stdc++exp linked for ${target}.")
    endif()
endfunction()

# === Libraries ===
add_library(shapes_shared SHARED ${SHAPES_SOURCES})
add_library(shapes_static STATIC ${SHAPES_SOURCES})

foreach(lib shapes_shared shapes_static)
    target_include_directories(${lib} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
    )
endforeach()

set_target_properties(shapes_shared PROPERTIES
    OUTPUT_NAME "shapes"
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
)

set_target_properties(shapes_static PROPERTIES
    OUTPUT_NAME "shapes"
    POSITION_INDEPENDENT_CODE ON
)

# === Application ===
add_executable(shapes_app src/app/main.cpp)
target_link_libraries(shapes_app PRIVATE shapes_static)
link_stdcxxexp(shapes_shared)
link_stdcxxexp(shapes_static)
link_stdcxxexp(shapes_app)

# === Installation ===
install(TARGETS shapes_static shapes_shared shapes_app
    EXPORT shapesTargets
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

install(DIRECTORY include DESTINATION include)

# === Testing ===
if(NOT MSVC)
    find_package(GTest REQUIRED)
    enable_testing()

    function(add_shape_test test_name sources_pattern)
        file(GLOB TEST_SOURCES ${sources_pattern})
        add_executable(${test_name} ${TEST_SOURCES})
        target_link_libraries(${test_name} PRIVATE GTest::GTest GTest::Main shapes_static)
        link_stdcxxexp(${test_name})
        add_test(NAME ${test_name} COMMAND ${test_name})
    endfunction()

    add_shape_test(commons_test
        "tests/fixtures/commons/*.hpp;tests/commons*.cpp"
    )

    add_shape_test(models_test
        "tests/fixtures/*.hpp;tests/models*.cpp"
    )

    add_custom_target(runtests
        COMMAND commons_test && models_test
        DEPENDS commons_test models_test
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        COMMENT "Running all tests"
    )
else()
    message(STATUS "Skipping Google Test setup and test targets for MSVC.")
endif()

# === Custom Run Target ===
add_custom_target(run
    COMMAND shapes_app
    DEPENDS shapes_app
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    COMMENT "Running the shapes application"
)

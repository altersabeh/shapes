cmake_minimum_required(VERSION 3.31)
project(shapes VERSION 1.0.0 LANGUAGES Swift)

# ShapesBaseCommons Library
file(GLOB SHAPES_BASE_COMMONS_SOURCES Sources/ShapesBaseCommons/*.swift)
add_library(ShapesBaseCommons ${SHAPES_BASE_COMMONS_SOURCES})

# ShapesBaseModels Library
file(GLOB SHAPES_BASE_MODELS_SOURCES Sources/ShapesBaseModels/*.swift)
add_library(ShapesBaseModels ${SHAPES_BASE_MODELS_SOURCES})
target_link_libraries(ShapesBaseModels PRIVATE ShapesBaseCommons)

# ShapesClientShell Library
file(GLOB SHAPES_CLIENT_SHELL_SOURCES Sources/ShapesClientShell/*.swift)
add_library(ShapesClientShell ${SHAPES_CLIENT_SHELL_SOURCES})
target_link_libraries(ShapesClientShell PRIVATE ShapesBaseModels)

# Shapes Library
file(GLOB SHAPES_SOURCES Sources/Shapes/*.swift)
add_library(Shapes ${SHAPES_SOURCES})
target_link_libraries(Shapes PRIVATE ShapesClientShell)

# ShapesApp Executable
file(GLOB SHAPES_APP_SOURCES Sources/ShapesApp/*.swift)
add_executable(ShapesApp ${SHAPES_APP_SOURCES})
target_link_libraries(ShapesApp PRIVATE Shapes)

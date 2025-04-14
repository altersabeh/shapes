# Makefile for shapes D project

# Variables
DUB = dub
BUILD_DIR = build
SOURCE_DIR = source
TEST_DIR = tests

# Main targets
.PHONY: all build test clean run docs format lint

# Default target
all: build

# Build both library and executable
build:
	$(DUB) build --build=release

# Build and run the executable
run:
	$(DUB) run -c executable

# Run tests
test:
	$(DUB) test

# Clean build artifacts
clean:
	$(DUB) clean
	rm -rf $(BUILD_DIR)

# Generate documentation
docs:
	$(DUB) build -b=docs

# Format code using dfmt
format:
	$(DUB) run dfmt -- -i $(SOURCE_DIR)/**/*.d $(TEST_DIR)/**/*.d

# Run static code analysis using D-Scanner
lint:
	$(DUB) run dscanner -- --styleCheck $(SOURCE_DIR)

# Build specific configurations
.PHONY: build-lib build-exe

build-lib:
	$(DUB) build --config=library

build-exe:
	$(DUB) build --config=executable

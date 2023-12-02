# Makefile

# Set the Python interpreter
PYTHON := python

# Directories
SRC_DIR := app
TEST_DIR := tests

# Find all Python files in the source and test directories
SRC_FILES := $(wildcard $(SRC_DIR)/*.py)
TEST_FILES := $(wildcard $(TEST_DIR)/*.py)

# Targets
.PHONY: format
format: black isort

.PHONY: black
black:
	@echo "Running black..."
	@black $(SRC_DIR) $(TEST_DIR)

.PHONY: isort
isort:
	@echo "Running isort..."
	@isort $(SRC_DIR) $(TEST_DIR)

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  format   - Run black and isort"
	@echo "  black    - Run black to format code"
	@echo "  isort    - Run isort to sort imports"

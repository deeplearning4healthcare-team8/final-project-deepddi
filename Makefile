# Specifies the shell used by make, here set to bash
SHELL=/bin/bash

# Initialize Python version from the .python-version file
PYTHON_VERSION := $(shell cat .python-version)

# .PHONY tells make that these targets are not actual files
.PHONY: init check-pyenv check-python train

# 'init' target: Handles setting up the Python environment using pyenv
init: check-pyenv check-python
	@echo "Checking if Pipenv is installed..."
	@command -v pipenv >/dev/null 2>&1 || { echo "Pipenv not installed. Installing..."; pip install pipenv; }

	@echo "Installing dependencies with Pipenv..."
	pipenv install

# Check if pyenv is installed and install the correct Python version
check-pyenv:
	@if ! command -v pyenv >/dev/null; then \
		echo "pyenv is not installed. Checking current installed version of python..."; \
	else \
		echo "pyenv is installed. Ensuring Python $(PYTHON_VERSION) is installed..."; \
		pyenv install -s $(PYTHON_VERSION);\
	fi

# Check if the current Python version matches the required version
check-python:
	@if [ $$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2) != $(PYTHON_VERSION) ]; then \
		echo "Current Python version does not match the required version $(PYTHON_VERSION)."; \
		echo "Please configure your Python environment to use $(PYTHON_VERSION) and try again."; \
		echo "Consider using pyenv to configure your Python environment."; \
		echo "pyenv install instructions here: https://github.com/pyenv/pyenv?tab=readme-ov-file#installation"; \
		exit 1; \
	else \
		echo "Correct Python version $(PYTHON_VERSION) is active."; \
	fi

train:
	pipenv run python scripts/train.py
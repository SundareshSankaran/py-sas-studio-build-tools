#!/usr/bin/env bash

# Arguments
# $1 = name of directory where custom step resides

# STEP_NAME="Python - Generate Requirements"
# FILE_LOCATION="https://raw.githubusercontent.com/SundareshSankaran/sas-studio-custom-steps/refs/heads/49-update-python---revert-to-original-environment/Python%20-%20Generate%20Requirements/Python%20-%20Generate%20Requirements.step"

# STEP_NAME="Python - Create a Virtual Environment"
# FILE_LOCATION="https://raw.githubusercontent.com/SundareshSankaran/sas-studio-custom-steps/refs/heads/49-update-python---revert-to-original-environment/Python%20-%20Create%20a%20Virtual%20Environment/Python%20-%20Create%20a%20Virtual%20Environment.step"

STEP_NAME=`basename $1`
FILE_LOCATION=$2

set -euo pipefail

python -m venv buildproj
. buildproj/bin/activate

pip install --upgrade uv

uv pip install -r requirements.txt --force-reinstall --upgrade

# python -m ipykernel install --user --name=buildproj

python scripts/aa_create_initial_step_file.py "$STEP_NAME" "$1"


# python scripts/a_extract_step_file.py "$STEP_NAME" "$FILE_LOCATION"

python scripts/b_build_test_step.py "$STEP_NAME" "$1"
python scripts/c_build_step.py "$STEP_NAME" "$1"


# python b_build_step.py "$STEP_NAME" "$FILE_LOCATION"

# python c_detect_and_apply_changes.py
# python b_extract_vars.py

deactivate

rm -rf buildproj
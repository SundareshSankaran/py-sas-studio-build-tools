#!/usr/bin/env bash

STEP_NAME="Python - Create a Virtual Environment"
FILE_LOCATION="https://raw.githubusercontent.com/SundareshSankaran/sas-studio-custom-steps/refs/heads/28-define-update-objective-for-update-to-python-virtual-environments-step/Python%20Virtual%20environments/Python%20-%20Create%20a%20Virtual%20Environment.step"

set -euo pipefail

python -m venv buildproj
. buildproj/bin/activate

pip install --upgrade uv

uv pip install -r requirements.txt --force-reinstall --upgrade

python -m ipykernel install --user --name=buildproj

python scripts/a_extract_step_file.py "$STEP_NAME" "$FILE_LOCATION"
# python scripts/b_build_test_step.py "$STEP_NAME" "$FILE_LOCATION"
# python scripts/c_build_step.py "$STEP_NAME" "$FILE_LOCATION"


# python b_build_step.py "$STEP_NAME" "$FILE_LOCATION"

# python c_detect_and_apply_changes.py
# python b_extract_vars.py

deactivate

rm -rf buildproj
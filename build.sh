#!/usr/bin/env bash

set -euo pipefail

python -m venv buildproj
. buildproj/bin/activate

pip install --upgrade uv

uv pip install -r requirements.txt --force-reinstall --upgrade

python -m ipykernel install --user --name=buildproj

STEP_NAME="Send SMTP Email"
FILE_LOCATION="https://raw.githubusercontent.com/sassoftware/sas-studio-custom-steps/refs/heads/main/Send%20SMTP%20Email/Send%20SMTP%20Email.step"



# python a_extract_step_file.py "$STEP_NAME" "$FILE_LOCATION"

python b_build_step.py "$STEP_NAME" "$FILE_LOCATION"

# python c_detect_and_apply_changes.py
# python b_extract_vars.py

deactivate

rm -rf buildproj
#!/usr/bin/env bash

STEP_NAME="LLM - Azure OpenAI In-context Learning"
FILE_LOCATION="https://raw.githubusercontent.com/SundareshSankaran/LLM-Azure-OpenAI-In-context-Learning/refs/heads/52-add-the-question/LLM%20-%20Azure%20OpenAI%20In-context%20Learning.step"

set -euo pipefail

python -m venv buildproj
. buildproj/bin/activate

pip install --upgrade uv

uv pip install -r requirements.txt --force-reinstall --upgrade

python -m ipykernel install --user --name=buildproj

# python scripts/a_extract_step_file.py "$STEP_NAME" "$FILE_LOCATION"

# python b_build_step.py "$STEP_NAME" "$FILE_LOCATION"

# python c_detect_and_apply_changes.py
# python b_extract_vars.py

deactivate

rm -rf buildproj
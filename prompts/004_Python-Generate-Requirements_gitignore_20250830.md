# Prompt and Result: Python - Generate Requirements .gitignore Addition

**Prompt (30 Aug 2025):**

Add a .gitignore file to the Python - Generate Requirements folder which prevents any .DS_* file, any env file and any .step file with a Test prefix from being added to a git repo. 

SWITCH (i.e. cd) to the folder sas-studio-custom-steps, and then commit your changes.  Use commit standards as advised under https://www.baeldung.com/ops/git-commit-messages

Finally, save this prompt and the results to a markdown file under py-sas-studio-build-tools/prompts, using the naming convention <Prompt_Number>_<Step_Name>_<Short_Description>_<timestamp>.md

---

**Result:**

- Added `.gitignore` to `Python - Generate Requirements` with rules for `.DS_*`, `*.env`, and `Test*.step`.
- Staged and committed the file using a conventional commit message:

  > chore(requirements): add .gitignore to exclude system, env, and test step files

- Verified the file was committed to the current branch.

# Prompt and Result: Python - Generate Requirements SAS Program

**Prompt (30 Aug 2025):**

Using the Python - Create a Virtual Environment.sas SAS code as an example, write a SAS program that obtains parameters from user in the form of macro variables, regarding whether they want to freeze requirements from an entire Python environment, or gather requirements necessary for running a given set of Python programs.

If provided a Python environment folder as an argument, the program should take steps to freeze requirements and capture all packages within a given requirements file (saved in a location assumed to be specified by user)

If provided a folder containing Python programs as an argument, the program should create a requirements.txt file containing packages which are necessary to run those Python programs alone.

For both kinds of tasks, use the following two files as examples of how they have been carried out in the past - Python - Freeze Environment Details.sas and Python - Obtain Requirements File from Project Folders.sas.

Save the resulting SAS program under an extras folder inside Python - Generate Requirements.

Finally, save this prompt and the results to a markdown file under py-sas-studio-build-tools/prompts, using the naming convention <Prompt_Number>_<Step_Name>_<Short_Description>_<timestamp>.md (See <attachments> above for file contents. You may not need to search or read the file again.)

---

**Result:**

A SAS program was created at `Python - Generate Requirements/extras/Python - Generate Requirements.sas` that:
- Accepts macro variables for task type (`freeze` or `project`), environment folder, project folder, and output requirements file.
- If `freeze`, runs pip freeze in the specified environment and saves to the requirements file.
- If `project`, uses pipreqs to generate requirements for the specified project folder.
- Follows the style and logic of the provided example SAS programs.

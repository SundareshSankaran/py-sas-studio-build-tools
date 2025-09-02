# Prompt and Result: Python - Generate Requirements Custom Step UI JSON

**Prompt (31 Aug 2025):**

The attached Python - Generate Requirements.sas is the SAS program driving a SAS Studio custom step. A SAS Studio Custom step is a low code UI for running SAS programs.  An example of the json which contains the components of another SAS Studio Custom Step to be used as reference is https://raw.githubusercontent.com/SundareshSankaran/sas-studio-custom-steps/refs/heads/49-update-python---revert-to-original-environment/Python%20-%20Switch%20Environments/extras/Python%20-%20Switch%20Environments%20components.json.  Using the reference as an example, create a json which serves as a UI configuration for Python - Generate Requirements.sas.

Save your output as a json in the same location as Python - Generate Requirements.sas.  Save this prompt and the result of this prompt as a markdown file in a prompts folder within py-sas-studio-build-tools.  Use a naming convention of <Prompt_Number>_<Custom_Step_Name>_<short_description>_<timestamp>.md  (See <attachments> above for file contents. You may not need to search or read the file again.)

---

**Result:**

A UI JSON file named `Python - Generate Requirements components.json` was created in the same folder as the SAS program, with the following content:

```json
{
  "showPageContentOnly": true,
  "pages": [
    {
      "id": "param",
      "type": "page",
      "label": "Parameters",
      "children": [
        {
          "id": "req_task",
          "type": "radiogroup",
          "label": "What do you want to generate?",
          "items": [
            {
              "value": "freeze",
              "label": "Freeze all packages in a Python environment (pip freeze)"
            },
            {
              "value": "project",
              "label": "Generate requirements for a project folder (pipreqs)"
            }
          ],
          "required": true
        },
        {
          "id": "env_folder",
          "type": "path",
          "label": "Python environment folder (should contain /bin/python3):",
          "pathtype": "folder",
          "placeholder": "",
          "required": false,
          "visible": ["$req_task", "==", "freeze"]
        },
        {
          "id": "project_folder",
          "type": "path",
          "label": "Project folder containing Python scripts:",
          "pathtype": "folder",
          "placeholder": "",
          "required": false,
          "visible": ["$req_task", "==", "project"]
        },
        {
          "id": "req_file",
          "type": "path",
          "label": "Output requirements.txt file location:",
          "pathtype": "file",
          "placeholder": "",
          "required": true
        },
        {
          "id": "text1",
          "type": "text",
          "text": "Choose whether to freeze all packages in a Python environment (pip freeze) or generate requirements for a project folder (pipreqs).",
          "visible": ""
        }
      ]
    },
    {
      "id": "about",
      "type": "page",
      "label": "About",
      "children": [
        {
          "id": "about_text",
          "type": "text",
          "text": "Python - Generate Requirements\n===============================\n\nThis custom step helps you generate a requirements.txt file for your Python project or environment. You can either freeze all packages in a given Python environment, or generate requirements based on the imports used in a folder of Python scripts.\n\nFor more details, refer to the documentation or contact the author.",
          "visible": ""
        },
        {
          "id": "contact_details",
          "type": "section",
          "label": "Created / Contact",
          "open": true,
          "visible": "",
          "children": [
            {
              "id": "created_contact_text",
              "type": "text",
              "text": "Sundaresh Sankaran (sundaresh.sankaran@sas.com)",
              "visible": ""
            }
          ]
        },
        {
          "id": "about_version",
          "type": "section",
          "label": "Version",
          "open": true,
          "visible": "",
          "children": [
            {
              "id": "version_text",
              "type": "text",
              "text": "Version : 1.1.0  (31AUG2025)",
              "visible": ""
            }
          ]
        }
      ]
    }
  ],
  "syntaxversion": "1.3.0",
  "values": {
    "req_task": "freeze",
    "env_folder": "",
    "project_folder": "",
    "req_file": ""
  }
}
```

# Prompt and Result: Python - Switch Environments Custom Step UI JSON

**Prompt (28 Aug 2025):**

The attached Python - Switch Environments.sas is the SAS program driving a SAS Studio custom step. A SAS Studio Custom step is a low code UI for running SAS programs.  An example of the json which contains the components of another SAS Studio Custom Step is provided as reference.  Using the reference as an example, create a json which serves as a UI configuration for Python - Switch Environments.sas.

Save your output as a json in the same location as Python - Switch Environments.sas.  Save this prompt and the result of this prompt as a markdown file in a prompts folder within py-sas-studio-build-tools.  Use a naming convention of <Prompt_Number>_<Custom_Step_Name>_<short_description>_<timestamp>.md (See <attachments> above for file contents. You may not need to search or read the file again.)

---

**Result:**

A UI JSON file named `Python - Switch Environments components.json` was created in the same folder as the SAS program, with the following content:

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
					"id": "revert_to_original",
					"type": "radiobuttons",
					"label": "What would you like to do?",
					"options": [
						{"label": "Revert to original Python environment", "value": 1},
						{"label": "Switch to a specified virtual environment (venv)", "value": 0}
					],
					"default": 1,
					"required": true
				},
				{
					"id": "venv",
					"type": "path",
					"label": "If switching, provide the path to your virtual environment (include the 'venv' folder):",
					"pathtype": "folder",
					"placeholder": "",
					"required": false,
					"visible": "revert_to_original == 0"
				},
				{
					"id": "text1",
					"type": "text",
					"text": "If you choose to revert, the Python environment will be set to the original or default environment used by SAS Studio. If you choose to switch, you must provide the full path to the virtual environment you wish to use.",
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
					"text": "Python - Switch Environments\n===============================\n\nThis custom step allows you to switch between different Python environments from within a SAS session, or revert to the original environment.\n\nFor more details, refer to the documentation or contact the author.",
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
							"text": "Version : 1.0.0  (27AUG2025)",
							"visible": ""
						}
					]
				}
			]
		}
	],
	"syntaxversion": "1.3.0",
	"values": {
		"revert_to_original": 1,
		"venv": ""
	}
}
```

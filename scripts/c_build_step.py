import os
import sys
import re

def is_url(s):
    return bool(re.match(r'^https?://', s))


step_name = sys.argv[1].replace("\n"," ")   
repo_folder = sys.argv[3] if len(sys.argv) > 3 else "sas-studio-custom-steps"

print(f"Building custom step: {step_name}")


if len(sys.argv) > 2:
    file_location = sys.argv[2]

from py_sas_studio_custom_steps import CustomStep

cs = CustomStep()


if is_url(file_location):
    import requests
    res = requests.get(file_location)
    import tempfile
    with tempfile.NamedTemporaryFile() as temp_file:
    # temp_file is a file-like object, and temp_file.name is the file's path
        print(f"Temporary file created: {temp_file.name}")
    # Write some data to the temporary file
        temp_file.write(res.content)
        cs.load_step_file(custom_step_file=temp_file.name)
elif os.path.exists(os.path.join(os.getcwd(),"..",repo_folder,f"{step_name}",f"{step_name}.step")):
    cs.load_step_file(custom_step_file=os.path.join(file_location,f"{step_name}.step"))
else:
    print(f"Step file not found at location: {file_location}")
    print("Proceeding to build new file")

if os.path.exists(os.path.join(os.getcwd(),"..",repo_folder,f"{step_name}","extras")):
    cs.attach_ui(ui_json_file=os.path.join(os.getcwd(),"..",repo_folder,f"{step_name}","extras",f"{step_name} components.json"))
    cs.attach_sas_program(sas_file=os.path.join(os.getcwd(),"..",repo_folder,f"{step_name}","extras",f"{step_name}.sas"))   

cs.create_custom_step(custom_step_path=os.path.join(os.getcwd(),"..",repo_folder,f"{step_name}",f"{step_name}.step"))

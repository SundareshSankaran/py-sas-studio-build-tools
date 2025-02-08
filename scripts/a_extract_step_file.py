import os
import sys

step_name = sys.argv[1]
file_location = sys.argv[2] 

import requests
from py_sas_studio_custom_steps import CustomStep

res = requests.get(file_location)

import tempfile

with tempfile.NamedTemporaryFile() as temp_file:
    # temp_file is a file-like object, and temp_file.name is the file's path
    print(f"Temporary file created: {temp_file.name}")

    # Write some data to the temporary file
    temp_file.write(res.content)
    cs = CustomStep().load_step_file(custom_step_file=temp_file.name)

if not os.path.exists(os.path.join(os.getcwd(),"..",f"{step_name}","extras")):
    os.makedirs(os.path.join(os.getcwd(),"..",f"{step_name}","extras"))

with open(os.path.join(os.getcwd(),"..",f"{step_name}","extras",f"{step_name} components.json"),"w") as f:
    f.write(cs["ui"])

with open(os.path.join(os.getcwd(),"..",f"{step_name}","extras",f"{step_name}.sas"),"w") as f:
    f.write(cs["templates"]["SAS"])
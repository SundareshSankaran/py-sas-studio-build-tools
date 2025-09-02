import os
import sys
from py_sas_studio_custom_steps import CustomStep

step_name = sys.argv[1].replace("\n", " ")
file_location = sys.argv[2]

cs = CustomStep(name=step_name)

cs.create_custom_step(custom_step_path=f"{file_location}/{step_name}.step")

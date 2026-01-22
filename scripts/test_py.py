import sys
print("Arg1", sys.argv[1])
import os
print(os.path.dirname(os.path.abspath(sys.argv[1])))
print("Arg2", sys.argv[2])
print("Arg3", sys.argv[3])
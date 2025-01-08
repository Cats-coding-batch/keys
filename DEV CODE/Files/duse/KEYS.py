import subprocess
import os
start_file_path = f'files\menu.exe'  # Update this to the correct path
#p = subprocess.Popen(f'start cmd /k "{start_file_path}"', shell=True)
p = subprocess.Popen(f'start {start_file_path}', shell=True)
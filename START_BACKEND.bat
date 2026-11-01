@echo off
cd /d "%~dp0Backend"
if not exist myenv\Scripts\python.exe python -m venv myenv
call myenv\Scripts\activate.bat
python -m pip install -r requirements.txt
python run.py

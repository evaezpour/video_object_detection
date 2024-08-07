@echo off
set HOME=%HOMEDRIVE%%HOMEPATH%
cd %HOME%

:: Clone the GroundingDINO repository if it doesn't exist
if not exist "GroundingDINO" (
    echo Cloning GroundingDINO repository...
    git clone https://github.com/IDEA-Research/GroundingDINO.git
) else (
    echo "GroundingDINO directory already exists. Skipping clone."
)

cd GroundingDINO

:: Install the requirements
echo Installing GroundingDINO dependencies...
python -m pip install -e .

echo "GroundingDINO setup complete."
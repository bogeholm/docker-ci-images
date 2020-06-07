#! /bin/bash
set -e

GREEN='\033[1;32m'
NOFORMAT='\033[0m' # No Color

echo -e "Latex version: ${GREEN}$(latex --version | head -1)${NOFORMAT}"
echo -e "Python version: ${GREEN}$(python --version)${NOFORMAT}"
echo -e "Python 3 version: ${GREEN}$(python3 --version)${NOFORMAT}"
echo -e "Jupyter - ${GREEN}$(jupyter kernelspec list)${NOFORMAT}"
echo -e "Loading Python packages..."
python install-check.py

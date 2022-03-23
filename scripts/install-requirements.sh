#!/bin/bash

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Install PIP dependencies using pip3"
python3 -m pip install --upgrade -r $script_dir/../requirements.txt > /dev/null

echo "Initialize pre-commit"
pre-commit install

echo "Ensuring all pre-commit plugins are up to date"
pre-commit autoupdate

echo "Install Hadolint"
VERSION=v2.9.2
OS=linux
ARCH=x86_64
sudo curl -L https://github.com/hadolint/hadolint/releases/download/$VERSION/hadolint-$OS-$ARCH -o /usr/local/bin/hadolint
sudo chmod +x /usr/local/bin/hadolint

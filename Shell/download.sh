#!/bin/bash

cd ~/UCL_COMP0235_BIOCHEM_PROJECT/Ansible/

echo "Download codebase from Github for S4Pred and HH-suite"
ansible-playbook --private-key=~/.ssh/project_identity -i inventory.yaml code_downloader.yaml

echo "Download PDB70 dataset"
ansible-playbook --private-key=~/.ssh/project_identity -i inventory.yaml data_downloader.yaml


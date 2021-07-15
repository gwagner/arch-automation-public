# Arch Ansible

This repository is used to provision my workstation.  It will run routine tests in a virtual machine and be used for applying new software installation on my primary desktop.

# Full Test

Run this command from an arch system to build an ISO, copy it to vmware, start up a virtual machine, and do a full install of base system and configuration
`ansible-playbook -i inventory.yaml -l test.valewood.lab arch_fresh_install.yaml`

# Reconfigure

Run this command to do a configuration install.  Best effor to keep this automation up to date so that if the system ever needs to get rebuilt, it is just one command away!
`sudo ansible-playbook -i inventory.yaml -l gwagner-desktop.valewood.local arch_configure.yaml --ask-vault-password`

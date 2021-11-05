FROM willhallonline/ansible:latest

COPY ansible.cfg /etc/ansible/ansible.cfg

RUN ansible-galaxy collection install kewlfft.aur community.general community.vmware community.libvirt
RUN pip install pyvmomi
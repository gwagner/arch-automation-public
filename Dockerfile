FROM willhallonline/ansible:2.10-ubuntu-20.04

COPY vault-password-file /vault-password-file
COPY ansible.cfg /etc/ansible/ansible.cfg
COPY id_rsa /id_rsa 
# ^^ This is the dumbs, thanks windows

RUN chmod 600 /vault-password-file && chmod 600 /id_rsa
RUN ansible-galaxy install kewlfft.aur
RUN pip install pyvmomi
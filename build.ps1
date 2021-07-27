# This rsync is because docker on windows is dumb especially with WSL
wsl rsync -aPv --delete ./ /root/arch-automation

# Ensure we have the newest container
wsl docker build -t ansible:latest /root/arch-automation/

# Run the full test automation
wsl docker run -it --rm `
    -v ~/arch-automation/:/ansible `
    -w /ansible `
    ansible:latest ansible-playbook -vvvv -i inventory.yaml -l test.valewood.lab -e create_image=false --vault-password-file /vault-password-file arch_fresh_install.yaml

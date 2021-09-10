sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update

# For some reason, the python3-pip install with .sh did fail for me.
# Run manually if needed.
sudo apt install python3-pip
sudo pip3 install pywinrm
sudo pip3 install pyvmomi
sudo pip3 install ansible
sudo pip3 install ansible[azure]

# Added support for Azure
# https://github.com/ansible-collections/azure
wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
sudo pip3 install -r requirements-azure.txt
ansible-galaxy collection install azure.azcollection

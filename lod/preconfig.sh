#/bin/sh
echo Installing Ansible
yum -y install ansible
pip install netapp-lib

echo Configuring the ansible hosts file
cp -p /etc/ansible/hosts /etc/ansible/hosts.bak
mv ./hosts /etc/ansible/hosts
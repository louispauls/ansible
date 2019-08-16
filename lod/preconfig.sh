#/bin/sh
echo ----------- Installing Ansible ------------------
yum -y install ansible    > /dev/null
pip -q install netapp-lib > /dev/null

echo ----------- Configuring Ansible Hosts ------------------
cp -p /etc/ansible/hosts /etc/ansible/hosts.bak
mv ./hosts /etc/ansible/hosts > /dev/null
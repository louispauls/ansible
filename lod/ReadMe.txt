log into rhel1 as root

yum -y install ansible
pip install netapp-lib

git clone https://github.com/louispauls/ansible/

cd ansible/lod

==============================================================
log into cluster01 and verify that the cluster is empty

vi /etc/ansible/hosts and add rhel1 and rhel2

ansible all -a "docker --version"
ansible all -a "docker image ls"
ansible all -a "docker image pull ubuntu"

ansible-playbook config.yml


OPTIONAL:
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
pip install --upgrade pip

https://hvops.com/articles/ansible-post-install/

wget https://raw.githubusercontent.com/louispauls/ansible/master/lod/ReadMe.txt

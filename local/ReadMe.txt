wget https://raw.githubusercontent.com/louispauls/ansible/master/local/config.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/local/cluster.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/local/variables.yml

yum install python
yum install python-pip
pip install --upgrade pip

pip install netapp-lib

ansible all -a "docker --version"
ansible all -a "docker image ls"
ansible all -a "docker image pull ubuntu"

ansible-playbook config.yml


OPTIONAL:
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm


https://hvops.com/articles/ansible-post-install/

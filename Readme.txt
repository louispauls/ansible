log into rhel1 as root
mkdir ansible
cd ansible
wget https://raw.githubusercontent.com/louispauls/ansible/master/Readme.txt

yum -y install ansible
pip install netapp-lib

wget https://raw.githubusercontent.com/louispauls/ansible/master/config.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/variables.yml

log into cluster01 and verify that the cluster is empty
	
ansible-playbook config.yml


OPTIONAL:
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
pip install --upgrade pip

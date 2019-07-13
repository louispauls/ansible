log into rhel1 as root
mkdir ansible
cd ansible
wget https://raw.githubusercontent.com/louispauls/ansible/master/Readme.txt

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install ansible

pip install --upgrade pip
pip install netapp-lib

wget https://raw.githubusercontent.com/louispauls/ansible/master/config.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/variables.yml

log into cluster01 and verify that the cluster is empty
	
ansible-playbook config.yml

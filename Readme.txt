rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install ansible
ansible --version

pip install --upgrade pip
pip install netapp-lib

wget https://raw.githubusercontent.com/louispauls/ansible/master/create_aggregates.yml

verify that no data aggregates exists
	aggr show
	disk show
	
ansible-playbook create_aggregates.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/local/config.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/local/cluster.yml
wget https://raw.githubusercontent.com/louispauls/ansible/master/local/variables.yml

ansible all -a "docker --version"
ansible all -a "docker image ls"
ansible all -a "docker image pull ubuntu"

ansible-playbook cluster.yml
ansible-playbook config.yml


NOTES:
~~~~~~~~
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install python
yum install python-pip
pip install --upgrade pip
pip install --upgrade ansible
pip install netapp-lib

Update Modules
cd ~/ansible-devel
git pull
cd ~/ansible-devel/lib/ansible
$ cp -pRv module_utils/netapp* /usr/lib/python2.7/site-packages/ansible/module_utils
$ cp -pRv modules/storage/netapp/* /usr/lib/python2.7/site-packages/ansible/modules/storage/

https://hvops.com/articles/ansible-post-install/

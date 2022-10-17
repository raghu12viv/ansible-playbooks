whoami
ssh-keygen
ssh-copy-id ubuntu@172.31.16.159
ssh-copy-id ubuntu@172.31.20.198
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
ansibel --version
ansilbe --version
ansible --version
sudo vim /etc/ansible/hosts
ls -la
ansile all
ansible all
ansible all -a 'ls -la'
ansible all -a 'mkdir file1'
ssh 172.31.20.198
ansible all -a 'ls -la'
free -m 
ansible all -i /etc/ansible/hosts -m command -a 'free -m'
ansible all -i /etc/ansible/hosts -m command -a 'date'
ansible all -m command -a 'ls'
ansible all -a 'free -m'
ansible all -m shell -a 'curl -fsSL https://get.docker.com -o get-docker.sh'
ansible all -m shell -a 'sh get-docker.sh'
ssh 172.31.20.198
ansible all -m shell -a 'free -m > file1'
ansible all -m shell -a 'ls  > file1'
ansible all -a 'free -m'
ansible all -m shell -a 'sh get-docker.sh'
ssh 172.31.20.198
ansible all -m shell -a 'free -m > file2'
ssh 172.31.20.198
ansible all -m user -a 'name=vivek password=vivek12'
ansible all -m user -a 'name=vivek password=vivek12' -b
ssh 172.31.20.198
ansible all -m user -a 'name=raghu password=raghu12 uid=1111 home=/tmp/raghu comment="a normal user" shell=/bin/bash' -b
ssh 172.31.20.198
ansible -m file -a 'name=/tmp/file1 state=touch'
ansible all -m file -a 'name=/tmp/file1 state=touch'
ssh 172.31.20.198
ansible all -m file -a 'name=/tmp/file1 state=absent'
ssh 172.31.20.198
ansible all -m user -a 'name=/tmp/file2 state=touch owner=vivek group=raghu mode=770' -b
ansible all -m user -a 'name=/tmp/file2 state=touch' -b
ssh 172.31.20.198
ansible all -m user -a 'name=/tmp/file2 state=touch' -b
ansible all -m file -a 'name=/tmp/file2 state=touch owner=vivek group=raghu mode=770' -b
ssh 172.31.20.198
cat > file10
cat  file10
ansible all -m copy -a 'src=file10 dest=/home/ubuntu'
ssh 172.31.20.198
ls
ansible all -m copy -a 'src=file10 dest=/home/ubuntu owner-root group=raghu mode=747'
ansible all -m copy -a 'src=file10 dest=/home/ubuntu owner-root group=raghu mode=747' -b
ssh 172.31.20.198
ansible all -m copy -a 'src=file10 dest=/home/ubuntu owner-root group=raghu mode=747' -b
ansible all -m copy -a 'src=file10 dest=/home/ubuntu owner=root group=raghu mode=747' -b 
ssh 172.31.20.198
ansible all -m copy -a 'content="welcome to world" dest=/home/ubuntu/file100' -b
ssh 172.31.20.198
ansible all -m copy -a 'content="welcome to world" dest=/home/ubuntu/file10' -b
ssh 172.31.20.198
ansible all -m apt -a 'name=tree state=present' -b
ssh 172.31.20.198
ansible all -m apt -a 'name=tree state=absent' -b
ssh 172.31.20.198
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ssh 172.31.20.198
ansible all -m service -a 'name=tomcat9 state=stop' -b
ansible all -m service -a 'name=tomcat9 state=restart' -b
ansible all -m service -a 'name=tomcat9 state=stoped' -b
ansible all -m service -a 'name=tomcat9 state=stopped' -b
ansible all -m service -a 'name=tomcat9 state=restartted' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m uri -a 'url=http://google.com status_code=200' -b
ansible all -m uri -a 'url=http://cccgoogle.com status_code=200' -b
ssh 172.31.20.198
ansible all -m replace -a 'regexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m git -a 'repo=https://github.com/intelliqittrainings/maven.git dest=/tmp/mygit' -b
ssh 172.31.16.159
ansible all -m fetch -a 'src=/tmp/mygit dest-/tmp'
ansible all -m fetch -a 'src=/tmp/mygit dest=/tmp'
ansible all -m fetch -a 'src=/tmp/mygit/Jenkinsfile dest=/tmp'
ls
cd /tmp
ls
cd 172.31.16.159/
ls
cd tmp
ls
cd mygit
ls
cd
ansible all -m apt -a 'name=apache2 state=present update_cache=yes' -b
ansible all -m copy -a 'content="Welocme to world" dest=/var/www/html/index.html' -b
ansible all -m uri -a 'url=http://172.31.20.198 status_code=200' -b
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m apt -a 'name=tomcat9-admin state=present update_cache=yes' -b
vim tomcat-users.xml
ansible all -m copy -a 'src=tomcat-users.xml dest=/etc/tomcat9' -b
ansible all -m replace -a 'regexp=8080 replace-9090 path=/etc/tomcat9/server.xml' -b
ansible all -m replace -a 'regexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b 
ansible all -m uri -a 'http://172.31.20.198:9090 status_code=200' -b
ansible all -m uri -a 'hurl=ttp://172.31.20.198:9090 status_code=200' -b
ansible all -m uri -a 'url=ttp://172.31.20.198:9090 status_code=200' -b
vim tomcat-users.xml
ansible all -m replace -a 'regexp=9090 replace=8080 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b 
ansible all -m uri -a 'url=http://172.31.20.198:9090 status_code=200' -b
ansible all -m uri -a 'url=http://172.31.20.198:8080 status_code=200' -b
mkdir playbooks ; cd playbooks
vim playbook1.yml
ansible-playbook playbook1.yml --syntax-check
ansible-playbook playbook1.yml 
ansible-playbook playbook1.yml -b
ssh 172.31.16.159 
vim playbook2.yml
ansible-playbook playbook2.yml
ansible-playbook playbook2.yml --syntax-check
vim playbook2.yml
ansible-playbook playbook2.yml
ansible-playbook playbook2.yml -b
ls
cd playbooks/
ls
cat playbook1.yml 
cd ..
cat playbook
cat playbook2.yml 
ansible-playbook playbook2.yml -b
cd playbooks/
vim playbook3.yml
ansible-playbook playbook3.yml -b
cd ..
mv tomcat-users.xml playbook/
mv tomcat-users.xml playbooks/
ls
cd playbooks/
ansible-playbook playbook3.yml -b
pwd
mv tomcat-users.xml /home/ubuntu
ls
vim playbook3.yml 
ansible-playbook playbook3.yml -b
vim playboo4.yml
ansible-playbook playbook4.yml --extra-vars "a=tomcat9 b=absent c=no"
ansible-playbook playboo4.yml --extra-vars "a=tomcat9 b=absent c=no" -b
ansible-playbook playboo4.yml --extra-vars "a=tree b=present c=yes" -b
vim playbook5.yml
ansible-playbook playbook5.yml --extra-vars "a=Raju b=raju12 c=/home/Raju d=/home/Raju/file e=touch" -b
ssh 172.31.20.198
ls
cd playbooks/
ls
vim playbook6.yml
ansible-playbook playbook6.yml -b
ansible-playbook playbook6.yml --extra-vars 'a=git b=present c=no'
ansible-playbook playbook6.yml --extra-vars 'a=git b=present c=no'-b
ansible-playbook playbook6.yml --extra-vars 'a=git b=present c=yes'-b
ansible-playbook playbook6.yml --extra-vars 'a=git b=present c=yes' -b
cd
ls
mv playbook2.yml playbooks
cd playbooks/
ls
ssh-copy-id ec2-user@172.31.6.47
ssh 172.31.6.47
ssh ec2-user@172.31.6.47
ssh-copy-id ubuntu@172.31.11.31
ssh 172.31.11.31
sudo vi /etc/ansible/hosts
ansible all -m command -a 'ls -la'
ansible appserver -m command -a 'ls'
ansible appserver -m command -a 'ls -la'
cd playbooks/

#!/bin/bash
# install docker

# make install directory, download and install rpm
#mkdir -p /opt/docker && cd $_
#rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
#yum -y install docker-io

curl -fsSL https://get.docker.com/ | sh

cat > /etc/sysconfig/docker <<- "EOF"
other_args="--insecure-registry 10.20.2.139:5000"
EOF

#sed -i 's/other_args=/other_args="--insecure-registry 10.20.2.139:5000"/' /etc/sysconfig/docker

# create docker group and add user
groupadd docker
usermod -aG docker vagrant

# start service and ensure it always starts
service docker start
chkconfig docker on

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
#!/bin/sh

## git
yum install git

## ��װ Docker
### ����һ���ֿ�
yum install -y yum-utils
yum-config-manager \
		    --add-repo \
		    	        https://download.docker.com/linux/centos/docker-ce.repo
### ��װ���µ�����
yum install docker-ce docker-ce-cli containerd.io
### ���� docker
systemctl start docker
### ������ϵͳ����
systemctl enable docker
### ���ü��ٴ���https://mirror.ccs.tencentyun.com����https://78hmjqgm.mirror.aliyuncs.com��
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://mirror.ccs.tencentyun.com"]
}
EOF
systemctl daemon-reload
systemctl restart docker

## ��װ�������
### kms
docker run -d -p 1688:1688 --name kms --restart=always teddysun/kms
### portainer
docker run -d -p 33001:8000 -p 33002:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -e TZ=Asia/Shanghai --restart=always portainer/portainer-ce
### jenkins
docker run -d -p 33003:8080 -p 33004:50000 --name jenkins -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_data:/var/jenkins_home -e TZ=Asia/Shanghai --restart=always jenkinsci/blueocean

#!/bin/sh

## git
yum install git

## 安装 Docker
### 设置一个仓库
yum install -y yum-utils
yum-config-manager \
		    --add-repo \
		    	        https://download.docker.com/linux/centos/docker-ce.repo
### 安装最新的引擎
yum install docker-ce docker-ce-cli containerd.io
### 启动 docker
systemctl start docker
### 设置随系统重启
systemctl enable docker
### 设置加速代理（https://mirror.ccs.tencentyun.com）（https://78hmjqgm.mirror.aliyuncs.com）
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://mirror.ccs.tencentyun.com"]
}
EOF
systemctl daemon-reload
systemctl restart docker

## 安装常用软件
### kms
docker run -d -p 1688:1688 --name kms --restart=always teddysun/kms
### portainer
docker run -d -p 33001:8000 -p 33002:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -e TZ=Asia/Shanghai --restart=always portainer/portainer-ce
### jenkins
docker run -d -p 33003:8080 -p 33004:50000 --name jenkins -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_data:/var/jenkins_home -e TZ=Asia/Shanghai --restart=always jenkinsci/blueocean


## OS

### Mac

#### 用户环境变量

- bash

```bash
vim ~/.bash_profile

export ANDROID_HOME=/Users/xxx/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

source .bash_profile
```

- zsh

```bash
vim ~/.zshrc

export ANDROID_HOME=/Users/xxx/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

source .zshrc
```  

### Linux

- [概要](docs/vps/linux.md)
  
  后台任务，杀掉

### Ubuntu

- [概要](docs/vps/ubuntu.md)

### Centos

- [概要](docs/vps/centos.md)
  
  修改密码、搭建 Shadowsocks、设置防火墙

### Nginx

- [概要](docs/vps/nginx.md)

### Docker

[log](https://docs.docker.com/engine/reference/commandline/logs/)

> docker logs [OPTIONS] CONTAINER

- options
  - `--details` 
  - `--follow , -f` - 跟踪日志输出
  - `--tail` - 从日志末尾开始显示的行数
  - `--since` - 显示自时间戳记以来的日志（例如2013-01-02T13：23：37）或相对时间（例如42m，持续42分钟）

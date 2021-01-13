# Docker

## Command

### [Exec](https://docs.docker.com/engine/reference/commandline/exec/)

docker exec [OPTIONS] CONTAINER COMMAND [ARG...]

### [Log](https://docs.docker.com/engine/reference/commandline/logs/)

docker logs [OPTIONS] CONTAINER

- options
  - `--details`
  - `--follow , -f` - 跟踪日志输出
  - `--tail` - 从日志末尾开始显示的行数
  - `--since` - 显示自时间戳记以来的日志（例如2013-01-02T13：23：37）或相对时间（例如42m，持续42分钟）

## 代理

```bash
$sudo mkdir -p /etc/docker
$sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["<your accelerate address>"]
}
EOF
$sudo systemctl daemon-reload
$sudo systemctl restart docker
```

## 部署示例

### mongodb

```bash
$sudo mkdir -p /mongodata
$sudo docker run -d --restart=always -v mongodata:/data/db -p 33017:27017 --name mongo mongo --auth
# 设置密码
$sudo docker exec -it mongo mongo admin
$use admin
$db.createUser({
  user: 'admin',  // 用户名
  pwd: '******',  // 密码
  roles:[{
    role: 'root',  // 角色
    db: 'admin'  // 数据库
  }]
})
$db.auth('admin','******')
$use wxiang
$db.createUser({
  user: 'wxiang',  // 用户名
  pwd: '******',  // 密码
  roles:[{
    role: 'dbOwner',  // 角色
    db: 'wxiang'  // 数据库
  }]
})
```

### jenkins

```bash
docker run \
  -u root \
  --restart=always \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins \
  jenkinsci/blueocean
```

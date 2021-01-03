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

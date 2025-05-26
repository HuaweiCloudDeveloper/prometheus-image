# Prometheus部署指南

## ‌一、环境准备

### 更新系统

#### EulerOS2.0
```bash
yum -y update  
yum -y upgrade
```

#### Ubuntu 24.04
```bash
apt-get -y update
export DEBIAN_FRONTEND=noninteractive
apt-get -y -o Dpkg::Options::="--force-confold" dist-upgrade
```

## ‌二、安装docker

#### EulerOS2.0
参考：[安装Docker](https://support.huaweicloud.com/bestpractice-hce/hce_bp_0002.html)

#### Ubuntu 24.04
参考：[安装Docker](https://www.runoob.com/docker/ubuntu-docker-install.html)

## ‌三、拉取镜像和创建容器

### 1.拉取镜像
```bash
docker pull prom/prometheus  
```
### 2.创建目录和配置文件
```bash
mkdir -p /data/soft/prometheus/etc
touch prometheus.yml
mkdir -p /data/soft/prometheus/data
chmod -R 777 /data/soft/prometheus/data  
```

### 3.创建容器
```bash
docker run -d \
  --name=prometheus \
  -p 9090:9090 \
  -v /data/soft/prometheus/etc/prometheus.yml:/etc/prometheus/prometheus.yml \
  -v /data/soft/prometheus/data:/prometheus \
  --restart=always \
  prom/prometheus  
```
<p align="center">
  <h1 align="center">Prometheus 监控和告警工具</h1>
  <p align="center">
    <a href="README.md"><strong>English</strong></a> | <strong>简体中文</strong>
  </p>
</p>

## 目录

- [仓库简介](#项目介绍)
- [前置条件](#前置条件)
- [镜像说明](#镜像说明)
- [获取帮助](#获取帮助)
- [如何贡献](#如何贡献)

## 项目介绍
‌[Prometheus‌](https://github.com/prometheus/prometheus) Prometheus 是一款开源的 监控和告警工具，最初由 SoundCloud 开发，后成为 Cloud Native Computing Foundation（CNCF） 的毕业项目（与 Kubernetes 同级）。它专为 云原生环境 设计，适用于 动态微服务架构 的监控需求。

**核心特性：**
1. 多维度数据模型：Prometheus采用基于时间序列的键值对数据模型，每个指标可附加多个标签(Labels)，实现细粒度监控。例如http_requests_total{method="POST",status="200"}可精确统计不同请求方法和状态码的访问量。支持灵活的PromQL查询语言，可对多维数据进行聚合、切片和计算。
2. 高效的时序数据库(TSDB)：内置优化的TSDB时序数据库，采用压缩存储和分块(Block)机制，单机可支持每秒百万级指标写入。数据按时间分片存储，默认保留15天，可通过配置调整保留策略。特别适合高频监控场景。
3. 动态服务发现：原生支持Kubernetes、Consul、AWS等多种服务发现机制，自动感知服务拓扑变化。例如在K8s环境中可自动发现Pod、Service等资源，无需手动维护监控目标列表。
4. 灵活的告警系统：通过Alertmanager实现告警分组、抑制和静默功能，支持多级路由策略。告警规则基于PromQL定义，可设置复杂条件（如持续时长、波动率等），并集成邮件、Slack、Webhook等通知渠道。
5. 可视化集成：原生提供表达式浏览器和基础图表，深度集成Grafana可视化工具。社区提供数千个预置仪表板模板，支持快速构建监控视图。
6. 轻量级部署：单个二进制文件即可运行，无外部依赖。支持容器化部署，资源占用低（基础监控场景仅需2-4GB内存），适合边缘计算等资源受限环境。
7. 丰富的导出器生态：提供Node Exporter、MySQL Exporter等数百种官方/社区导出器，覆盖常见基础设施、中间件和应用。支持自定义指标暴露，兼容多种数据格式。
8. 联邦集群能力：支持层级式联邦架构，可将多个Prometheus实例的数据聚合到中心节点，实现大规模分布式监控。特别适合多区域、多租户场景。

本项目提供的开源镜像商品 [**`Prometheus-监控和告警工具`**](https://marketplace.huaweicloud.com/hidden/contents/90b87595-6482-478e-a785-7a8b76c5a9e9#productid=OFFI1127509393944621056)，已预先安装 Prometheus 软件及其相关运行环境，并提供部署模板。快来参照使用指南，轻松开启“开箱即用”的高效体验吧。

**架构设计：**

![](./images/img.png)

> **系统要求如下：**
> - CPU: 2vCPUs 或更高
> - RAM: 4GB 或更大
> - Disk: 至少 50GB

## 前置条件
[注册华为账号并开通华为云](https://support.huaweicloud.com/usermanual-account/account_id_001.html)

## 镜像说明

| 镜像规格 | 特性说明 | 备注 |
| --- | --- | --- |
| [Prometheus3.3.0-arm-v1.0](https://github.com/HuaweiCloudDeveloper/prometheus-image/tree/Prometheus3.3.0-arm-v1.0?tab=readme-ov-file) | 基于鲲鹏服务器 + Huawei Cloud EulerOD 2.0 64bit 安装部署 |  |

## 获取帮助
- 更多问题可通过 [issue](https://github.com/HuaweiCloudDeveloper/Prometheus-image/issues) 或 华为云云商店指定商品的服务支持 与我们取得联系
- 其他开源镜像可看 [open-source-image-repos](https://github.com/HuaweiCloudDeveloper/open-source-image-repos)

## 如何贡献
- Fork 此存储库并提交合并请求
- 基于您的开源镜像信息同步更新 README.md
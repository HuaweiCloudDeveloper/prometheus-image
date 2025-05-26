locals {
  // you need to specify a unique name under a tenant according to the business, which will be used as part of the resource name
  app_id = format("%s-%s", "app", formatdate("hhmm", timestamp()))

  name_suffix = "mkp"

  // Tags of HUAWEI CLOUD resources. You can add tags to resources to classify resources.
  // for more details, please refer to https://support.huaweicloud.com/usermanual-tms/zh-cn_topic_0056266263.html
  tags = { Purpose = "MkpApplication" }



  # Configuration of the ECS memory size and number of cores
  # instance_flavor_cpu    = 4
  # instance_flavor_memory = 16
  #  通用计算增强型
  instance_performance_type = "kunpeng_computing"
  # 系统盘: 通用SSD
  ecs_volume_type = "GPSSD"

  # 规格：通用入门型
  #ecs_flavor = "kc1.xlarge.4"

  // Billing model for cloud resources, You need to modify it according to your actual situation.
  // In the development and testing phase, pay-per-use billing is recommended.
  // You can also set these three parameters as variables, allowing users to select at deployment time.
  charging_mode = var.charging_mode
  period_unit   = var.period_unit
  period        = var.period

  // The billing model for bandwidth, You need to modify it according to your actual situation.
  publicip_type         = "5_bgp"     # 全动态
  bandwidth_share_type  = "PER"       # 独享带宽
  bandwidth_charge_mode = "bandwidth" # 按带宽计费
  bandwidth_size        = 10          # 带宽大小

  # Image information in different regions, you need to enter your own image ID or add another region.
  # For Marketplace Image Id,you can log in to Seller Console, view the marketplace image id on Product Specifications section of My Products detail page.
  # 镜像版本：Prometheus
  #Prometheus3.3.0-HCE2.0
  instance_image_id_maps_v1 = {
#     北京4
    cn-north-4     = "de566e0b-03ac-4d46-8efb-f5edb1269806"
#     广州
    cn-south-1     = "83dca748-0308-4d20-acf3-6c8d1d368229"
#     上海一
    cn-east-3      = "1ba0e712-0554-4001-8ade-963d39ef4ab3"
#     乌兰察布一
    cn-north-9     = "3ad76cf8-f8b4-4246-8444-e4742b561584"
#     贵阳一
    cn-southwest-2 = "9e77e8c9-509d-4975-b502-779df24cda3d"

  }
  #Prometheus3.3.0-Ubuntu24.04
  instance_image_id_maps_v2 = {
#     北京4
    cn-north-4     = "fb292196-a280-4b0a-bbe8-0b33760e8f58"
#     广州
    cn-south-1     = "dafe98f7-9d75-4aaf-976e-84fd203a7ce4"
#     上海一
    cn-east-3      = "eb58fcea-7b93-44f8-b643-e43845a6e9e3"
#     乌兰察布一
    cn-north-9     = "c7504f42-a1bf-4b62-ad63-3b53d0ab3809"
#     贵阳一
    cn-southwest-2 = "9f2a67b4-1e00-4a00-93bd-a2df90c7783b"

  }  
  # # 其他版本增加（注意修改var参数和镜像的版本的判断部分）
  #  instance_image_id_maps = {
  #   #     北京4
  #   cn-north-4 = ""
  #  }  

  # Specifies the DNS server address list of a subnet. For details about the private DNS address, see https://support.huaweicloud.com/dns_faq/dns_faq_002.html#?
  subnet_dns_list_maps = {
    cn-north-4     = ["100.125.1.250", "100.125.129.250"]
    cn-south-1     = ["100.125.1.250", "100.125.136.29"]
    cn-east-3      = ["100.125.1.250", "100.125.64.250"]
    cn-north-9     = ["100.125.1.250", "100.125.107.250"]
    cn-southwest-2 = ["100.125.1.250", "100.125.129.250"]
  }


}
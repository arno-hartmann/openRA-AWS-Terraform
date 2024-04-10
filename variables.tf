variable "aws_profile" {
  type        = string
  description = "used aws proifle (see credentials)"
}

variable "cidr-vpc" {
  type        = string
  description = "Cidr Block of VPC"
}

variable "cidr-subnet" {
  type        = string
  description = "Cidr Block of Subnet"
}
variable "ressource_name_tag" {
  type        = string
  description = "tags naming the ressources (disguise if wanted)"
}

variable "redalert-server-name" {
  type        = string
  description = "Servername displayed in OpenRA-serverlist"
}

variable "redalert-server-pwd" {
  type        = string
  description = "Password to access game on the OpenRA server"
  sensitive   = true
}

variable "redalert-release" {
  type        = string
  description = "OpenRA Release eg. 20230225"
}

variable "instance_type" {
  type        = string
  description = "ec2 instance type - t2.micro for map EU, t2.small for Worldmap"
}

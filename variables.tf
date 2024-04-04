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

variable "redalert-server-pwd" {
  type        = string
  description = "pwd for OpenRA server"
  sensitive   = true
}

variable "redalert-release" {
  type        = string
  description = "OpenRA Release eg. 20230225"
}
# openRA-AWS-Terraform

## Setup the infrastucture and gameserver

1. Setup .aws/credentials

1. Login to AWS via CLI

1. Setup the infrastructure with terraform with the following commands:

```
terraform init
terraform plan
terraform apply
```

:information_source: During `plan` and `apply` you will be asked to set values for the variables. This can be avoided by creating a file for setting these values (see below).

4. You get the IP as `output` or find the server by the chosen name (see table of variables below) in the multiplayer overview.

1. Wait about 5 minutes, while the Server is installing for gameserver to be ready.

</br>

## Setup variables for easier provisioning

:warning: **The Password variable is not recommended to be saved in a file. Beware of checking in or publishing your variables!**

</br>

Create a file `terraform.vars` which matches your desired setup with values for the following variables:

```
aws_profile = "Name of the aws profile (credentials)"

cidr-vpc    = "10.0.0.0/27"
cidr-subnet = "10.0.0.0/28"

instance_type = "t2.micro"

redalert-server-name = "OpenRA"

redalert-release = "20250303"

ressource_name_tag = "OpenRedAlert"
```

</br>

### Table of Variables

| Variable Name        | Description                                       | Example Value         |
| :------------------- | :------------------------------------------------ | :-------------------- |
| aws_profile          | Name of the aws profile (credentials)             | "Standard", "Sandbox" |
| cidr-vpc             | CIDR of the VPC                                   | "10.0.0.0/27"         |
| cidr-subnet          | CIDR of the Subnet                                | "10.0.0.0/28"         |
| instance_type        | ec2 instance type                                 | "t2.micro"            |
| redalert-server-name | Name which shows on the serverlist of openRA      | "MyAwesomeGame"       |
| redalert-release     | version of the openRA server                      | "20250303"            |
| ressource_name_tag   | Name that will show in the aws ressources nametag | "OpenRedAlert"        |
| redalert-server-pwd  | Password to access game on the OpenRA server      |                       |

</br>

## Recommended sizing of the ec2 instance

`Instance type` "t2.micro" should be sufficient for most maps, more powerful instances (e.g."c7i.large") are recommended for the big world map or with many players. Choose x86_64 instance types as this setup uses the x86_64-AppImage!

# openRA-AWS-Terraform

Setup .aws/credentials

Login to AWS via SSO

</br>

Setup the infrastructure with terraform with the following commands:

```
terraform init
terraform plan
terraform apply
```

You get the IP as `output` or find the server in the multiplayer overvierw.

Wait about 5 minutes, while the Server is installing.

</br>

During plan and apply you will be asked to set the variables. This can be avoided by creating a file with the variables:

Create a file `terraform.vars` to your needs, especially the profile, with the following settings for the variables:

```
aws_profile = "Name of the aws profile (credentials)"

cidr-vpc    = "10.0.0.0/27"
cidr-subnet = "10.0.0.0/28"

instance_type = "t2.micro"

redalert-server-name = "OpenRA"

redalert-release = "20231010"

ressource_name_tag = "OpenRedAlert"
```

| Variable Name        | Description                                       | Example Value         |
| :------------------- | :------------------------------------------------ | :-------------------- |
| aws_profile          | Name of the aws profile (credentials)             | "Standard", "Sandbox" |
| cidr-vpc             | CIDR of the VPC                                   | "10.0.0.0/28"         |
| cidr-subnet          | CIDR of the Subnet                                | "10.0.0.0/29"         |
| instance_type        | ec2 instance type                                 | "t2.micro"            |
| redalert-server-name | Name which shows on the serverlist of openRA      | "MyAwesomeGame"       |
| redalert-release     | version of the openRA server                      | "20231010"            |
| ressource_name_tag   | Name that will show in the aws ressources nametag | "OpenRedAlert"        |

</br>

`Instance type` "t2.micro" should be sufficient for most maps, "t2.small" is recommended for the big world map or with many players.

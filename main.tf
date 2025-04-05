provider "aws" {
region = "ap-southeast-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-04b78e495d6db9297"
instance_type = "t2.medium"
key_name = "keypair"
vpc_security_group_ids = ["sg-0da6b43105b67d7fc"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring_server"]
}

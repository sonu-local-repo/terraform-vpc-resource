data "aws_ami" "aws-datasource" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}

data "aws_availability_zones" "my-availability-zones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_instance" "web" {
    depends_on = [
      aws_vpc.main, aws_network_acl.main
    ]
  ami           = data.aws_ami.aws-datasource.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [ aws_security_group.tf_security_group.id ]
  associate_public_ip_address = true

 user_data = file("${path.module}/appache.sh" )

  tags = {
    Name = "terraform EC2 instance"
  }
}
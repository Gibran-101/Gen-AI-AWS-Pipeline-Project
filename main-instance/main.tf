resource "aws_instance" "workstation" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  
  associate_public_ip_address = true
  subnet_id  = data.aws_subnet.selected.id  # 🚨 Add this line!

  key_name = "docker-access-key"
  
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "workstation"
  }
}

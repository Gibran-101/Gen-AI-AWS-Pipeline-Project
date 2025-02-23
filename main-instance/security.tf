# security.tf
resource "aws_security_group" "ec2_sg" {
  name        = "launch-wizard-6"
  description = "Security group for EC2 instance with SSH access"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH from EC2 Connect IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "launch-wizard-6"
  }
}
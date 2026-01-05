
#Public EC2 Security Group (Restricted SSH)
resource "aws_security_group" "public_ec2_sg" {
  name        = "lab2-public-ec2-sg"
  description = "Allow SSH from trusted IP only"
  vpc_id      = aws_vpc.secure_vpc.id

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["197.211.59.198/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Private EC2 Security Group(Internal Only)
resource "aws_security_group" "private_ec2_sg" {
  name        = "lab2-private-ec2-sg"
  description = "Allow traffic only from public subnet"
  vpc_id      = aws_vpc.secure_vpc.id

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.public_ec2_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


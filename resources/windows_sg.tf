resource "aws_security_group" "allow_rdp" {
  name        = "RDP"
  description = "Allow RDP Inbound Traffic"
  vpc_id      = var.remote_vpc_id

  ingress {
    description      = "Allow Port 3389"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #Allow SSH access from any IP address
  }
  egress {
    description      = "Allow IP and port outboud"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
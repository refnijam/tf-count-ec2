resource "aws_security_group" "SGTest" {
  ingress {
    description = "HTTP"
    from_port   = var.sg-http
    to_port     = var.sg-http
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"

  }
  ingress {
    description = "SSH"
    from_port   = var.sg-ssh
    to_port     = var.sg-ssh
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "tets"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "Name" = "Count"
  }
}
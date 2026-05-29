resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.allowed_instance_type[0]

  tags = {
    Name        = "${var.environment}-instance"
    environment = var.environment
  }

  lifecycle {
    prevent_destroy = true
  }
}

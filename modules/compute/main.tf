resource "aws_instance" "app" {
  count = var.app_instance_count
  ami = var.app_ami
  instance_type = var.app_instance_type
  subnet_id = var.private_subnet_ids[count.index % length(var.private_subnet_ids)]
  vpc_security_group_ids = [var.app_security_group_id]

  tags = {
    Name = "mean-app-${count.index + 1}"
  }
}

resource "aws_instance" "mongodb" {
  ami = var.mongodb_ami
  instance_type = var.mongodb_instance_type
  subnet_id = var.private_subnet_ids[0]
  vpc_security_group_ids = [var.mongodb_security_group_id]

  tags = {
    Name = "mean-mongodb"
  }
}
resource "aws_instance" "test" {
  #desciption             = "test"
  ami                    = var.VMImage
  instance_type          = var.VMSize
  count                  = var.vmspin
  key_name               = "VMimport"
  vpc_security_group_ids = ["${aws_security_group.SGTest.id}"]
  user_data              = "$file(app.sh)"

  tags = {
    Name = "test-${count.index + 1}"
  }

}
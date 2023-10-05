resource "aws_instance" "TerraformW7b" {
  ami                    = "ami-06a0cd9728546d178"
  vpc_security_group_ids = [aws_security_group.sg-demo.id]
  instance_type          = "t2.micro"
  key_name               = "utc-key"
  subnet_id              = aws_subnet.public_subnet1.id
  user_data              = file("Script.sh")





}
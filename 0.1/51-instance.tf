
resource "aws_instance" "jenkins" {
  ami           = "ami-04820fb919c13eb62"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private[0].id
  vpc_security_group_ids = [aws_security_group.jenkins.id]
  depends_on = [aws_security_group.jenkins]
  
  tags = {
    Name = var.name
  }
}


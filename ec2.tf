resource "aws_instance" "web" {
  ami           = "ami-0e2ff28bfb72a4e45" # Amazon Linux 2
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.web_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Welcome to 2-Tier App — Web Tier Running</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name = "web-server"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0abcd1234abcd5678"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo Instance IP: ${self.public_ip} >> ip_list.txt"
  }
}

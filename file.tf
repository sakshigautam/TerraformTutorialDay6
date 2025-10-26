provisioner "file" {
  source      = "app.conf"
  destination = "/etc/nginx/conf.d/app.conf"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip
  }
}

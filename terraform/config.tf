resource "null_resource" "remote-exec" {
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("/Users/dima/Downloads/django.pem")
    host = "3.249.110.232"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "docker version"
      
    ]
  
  }
  
}
resource "aws_instance" "expense" {
  ami = data.aws_ami.devopspractice.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type = local.instance_type
  
  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory.txt"
  }

   provisioner "local-exec" {
    when = destroy
    command = "rm -r inventory.txt"
  }
  connection {
    type      = "ssh"
    user      = "ec2-user"
    password  = "DevOps321"
    host      = self.public_ip
  }

provisioner "remote-exec" {
  inline = [
    "sudo dnf install nginx -y",
    "sudo  systemctl start nginx"
   ]
}

provisioner "remote-exec" {
  when = destroy
 inline = [
  "sudo systemctl stop nginx"
 ]
}

  tags = {
    Name    = var.ec2_parms.name
    Purpose = var.ec2_parms.purpose
  }
}
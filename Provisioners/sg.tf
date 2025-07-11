resource "aws_security_group" "allow_tls" {
  name          = var.sg_params.name
  description   = var.sg_params.description

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port    = ingress.value["from_port"]
      to_port      = ingress.value["to_port"]
      protocol     = ingress.value["protocol"]
      cidr_blocks  = ingress.value["cidr_blocks"]
    }   
  }
  egress {
    from_port    = 0
    to_port      = 0
    protocol     = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = var.sg_params.name
  }
}
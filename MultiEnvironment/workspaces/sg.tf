resource "aws_security_group" "allow_tls" {
  name = "allow_tls_${terraform.workspace}"
  description = var.sg_params.description

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port = ingress.value["from_port"] # ingress is the key word, use to iterate map, there are other ways also there
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  egress { 
    from_port   = var.sg_params.egress_from_port
    to_port     = var.sg_params.egress_to_port
    protocol    = var.sg_params.egress_protocol
    cidr_blocks = var.sg_params.egress_cidr_block
  }

  tags = {
    Name    = "allow_tls"
  }

}

# resource "aws_security_group_rule" "ingress" {
#     type              = var.sg_params.intress_type
#     from_port         = var.sg_params.ingress_from_port
#     to_port           = var.sg_params.ingress_to_port
#     protocol          = var.sg_params.ingress_protocol
#     security_group_id = aws_security_group.allow_tls.id 
#     cidr_blocks = var.sg_params.ingress_cidr_block
# }
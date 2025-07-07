resource "aws_security_group" "allow_tls" {
  name = var.sg_params.name
  description = var.sg_params.description

  egress { 
    from_port   = var.sg_params.egress_from_port
    to_port     = var.sg_params.egress_to_port
    protocol    = var.sg_params.egress_protocol
    cidr_blocks = var.sg_params.egress_cidr_block
  }

  tags = {
    Name    = var.sg_params.name
  }

}

resource "aws_security_group_rule" "ingress" {
    type              = var.sg_params.intress_type
    from_port         = var.sg_params.ingress_from_port
    to_port           = var.sg_params.ingress_to_port
    protocol          = var.sg_params.ingress_protocol
    security_group_id = aws_security_group.allow_tls.id 
    cidr_blocks = var.sg_params.ingress_cidr_block
}
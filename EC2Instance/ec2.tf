# Creating 1 EC2 instance
# To create EC2 instance we need to have Security group

resource "aws_instance" "this" {
    ami    = var.aws_instance_parameters.ami
    instance_type = var.aws_instance_parameters.instance_type
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name    = var.aws_instance_parameters.tagname
    }

}
resource "aws_security_group" "allow_tls"{
    name        = var.security_group_parameters.name
    description = var.security_group_parameters.description
    # vpc_id      = aws_vpc.main.id

#     ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.security_group_rule_parameters.cidr_blocks
  }

    tags = {
        Name = "allow_tls"
    }
}

resource "aws_security_group_rule" "ssh" {
    type        = var.security_group_rule_parameters.type
    from_port   = var.security_group_rule_parameters.from_port
    to_port     = var.security_group_rule_parameters.to_port
    protocol    = var.security_group_rule_parameters.protocol
    cidr_blocks = var.security_group_rule_parameters.cidr_blocks
    security_group_id = aws_security_group.allow_tls.id
}
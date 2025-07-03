# variable "region" {
#     default = "us-east-1"
# }
# variable "instance_type" {
#   default = "t3.micro"
# }
variable "aws_instance_parameters" {
    default = {
        region  =  "us-east-1"
        instance_type   = "t3.micro"
        ami     = "ami-09c813fb71547fc4f"
        tagname    = "Terraform EC2 Instance"
}
}

variable "security_group_parameters" {
    default = {
        name        = "allow_tls"
        description = "Allow TLS inbound traffic and all outbound traffic"
}
}

variable "security_group_rule_parameters" {
    default = {
    type        = "ingress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
}
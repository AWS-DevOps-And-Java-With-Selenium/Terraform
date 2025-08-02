variable "ec2_parms" {
  default = {}
}

variable "project" {
  default = {}
  }

variable "tags" {
    default = {}
}

variable "instance_type" {
  default = "t3.micro"
  validation {
    condition     = can(regex("^(t2|t3|t4g)\\.(micro|small|medium|large)$", var.instance_type))
    error_message = "Instance type must be in the format 't2.micro', 't3.small', etc."
  }
}

# variable "Common_tags" {
#   type = map(string)
#   default = {
#     Project = "expense"
#     Terraform = true
#   }
# }

# variable "environment" {}

variable "sg_params" {
default = {
        name                = ""
        description         = ""
        intress_type        = "ingress"
        ingress_from_port   = 22
        ingress_to_port     = 22
        ingress_protocol    = "tcp"
        ingress_cidr_block  = ["0.0.0.0/0"]
        egress_from_port    = 0
        egress_to_port      = 0
        egress_protocol     = "-1"
        egress_cidr_block   = ["0.0.0.0/0"]
    }
}

variable "ingress_ports" {
  default = {}
}

variable "ami_data" {
  default = {
    executable_users = []
    most_recent = false
    ami_name = ""
    ami_values = []
    device_type_name   = ""
    device_type_values = []
    vr_type_name   = ""
    vr_type_values = []
  }
}

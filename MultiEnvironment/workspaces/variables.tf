variable "ec2_parms" {
default = {
        # instances    = ["FrontEnd", "BackEnd", "DataBase"]
        # instances    = ["web", "functional ", "DB"]
        # ami          = "ami-09c813fb71547fc4f"
        # instance_type   = "t3.micro"
        
  }
}

variable "project" {
    default = "expense"
  }

variable "Common_tags" {
  type = map(string)
  default = {
    Project = "expense"
    Terraform = true
  }
}

# variable "environment" {}

variable "sg_params" {
default = {
        name                = "allow_tls"
        description         = "Allow all inbound and out bound traffic"
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

variable "r53_parms" {
default = {
        domain_name  = "atzuk.space"
        zone_id      = "Z050029220BMPWVO1BUE0"
        type         = "A"
        ttl          = 1
        allow_overwrite = true
    }
}

variable "ingress_ports" {
    default = [
    {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ]
  
}

variable "ec2_parms" {
default = {
        instances    = ["FrontEnd", "BackEnd", "DataBase"]
        # instances    = ["web", "functional ", "DB"]
        # ami          = "ami-09c813fb71547fc4f"
        # instance_type   = local.instance_type
  }
}

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

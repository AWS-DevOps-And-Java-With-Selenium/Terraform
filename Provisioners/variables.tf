variable "sg_params" {
    default = {
    name    = "allow_tls"
    description = "Allow all inbound and outbound traffic"
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0./0"]
    }
}

variable "ingress_ports" {
    default = [
        {
            from_port  = 80
            to_port    = 80
            type       = "HTTP"
            protocol   = "tcp"
            cidr_blocks= ["0.0.0.0/0"]
        }
        # {
        #     from_port = 443
        #     to_port   = 443
        #     protocol  = "tcp"
        #     cidr_blocks = ["0.0.0.0/0"] 
        # }
    ]
  
}

variable "ec2_parms" {
  default = {
    name    = "LinuxSystem"
    # ami     = data.devopspractice.id
    purpose = "To create a remote machine in aws cloud"
    region  = "us-east-1"
  }
}


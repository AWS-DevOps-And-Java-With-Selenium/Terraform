module "aws_instance" {
    source = "../Terraform-Module"
    ami = var.aws_ami.devopspractice.id
    instance_type = var.instance_type
    vpc_security_group_ids = var.sg_params.security_group_ids
}
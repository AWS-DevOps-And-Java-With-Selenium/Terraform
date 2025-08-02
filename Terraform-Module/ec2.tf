resource "aws_instance" "expense" {
    # for_each = local.instances
    ami = data.aws_ami.devopspractice.id
    # instance_type = local.instances // if we want to use the local variable with out overriding the variable
    instance_type = var.instance_type // if we want to use the variable directly
    vpc_security_group_ids = [aws_security_group.allow_tls.id] 
    
    tags = var.tags
}
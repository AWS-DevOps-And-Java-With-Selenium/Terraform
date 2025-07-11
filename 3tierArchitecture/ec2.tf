resource "aws_instance" "expense" {
    # count = length(var.ec2_parms.instances)
    for_each = local.instances
    ami = data.aws_ami.devopspractice.id
    instance_type = each.value
    vpc_security_group_ids =  [aws_security_group.allow_tls.id]

    tags = {
      Name = each.key
    }
}


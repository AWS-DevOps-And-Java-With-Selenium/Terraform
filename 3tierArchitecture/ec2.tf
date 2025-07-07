resource "aws_instance" "expense" {
    count = length(var.ec2_parms.instances)
    ami = data.aws_ami.devopspractice.id
    instance_type = local.instance_type
    vpc_security_group_ids =  [aws_security_group.allow_tls.id]

    tags = {
      Name = var.ec2_parms.instances[count.index]
    }
}


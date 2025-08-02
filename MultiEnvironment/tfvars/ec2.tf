resource "aws_instance" "expense" {
    for_each = local.instances
    ami = data.aws_ami.devopspractice.id
    instance_type = each.value 
    vpc_security_group_ids = [aws_security_group.allow_tls.id] 
    
    tags = merge(
      var.Common_tags, 
      {
      Name = "${var.project}-${var.environment}-${each.key}"
      }
    )
  }
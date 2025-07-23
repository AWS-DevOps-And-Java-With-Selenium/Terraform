# creating records using count loop
# resource "aws_route53_record" "expense" {
#   count = length(var.ec2_parms.instances)
#   zone_id = var.r53_parms.zone_id
#   name    = "${var.ec2_parms.instances[count.index]}.${var.r53_parms.domain_name}" #interpolation # The full DNS record name
#   type    = var.r53_parms.type # DNS record type
#   ttl     = var.r53_parms.ttl   # Time to live in seconds
#   records = [aws_instance.expense[count.index].private_ip] #list type # IPv4 address(es)
#   allow_overwrite = var.r53_parms.allow_overwrite
# }

# resource "aws_route53_record" "frontend" {
#   zone_id = var.r53_parms.zone_id
#   name    = "${var.r53_parms.domain_name}"
#   type    = var.r53_parms.type
#   ttl     = var.r53_parms.ttl
#   records = [aws_instance.expense[2].public_ip] #list type
#   allow_overwrite = var.r53_parms.allow_overwrite
# }

# creating the records using for_each loop
resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.r53_parms.zone_id
  name    = each.key == "FrontEnd" ? "${var.r53_parms.domain_name}" : "${each.key}.${var.r53_parms.domain_name}" #interpolation # The full DNS record name
  type    = var.r53_parms.type # DNS record type
  ttl     = var.r53_parms.ttl   # Time to live in seconds
  records = each.key == "FrontEnd" ? [each.value.public_ip] : [each.value.private_ip] #list type # IPv4 address(es)
  allow_overwrite = var.r53_parms.allow_overwrite
}
# Use this data source to get the ID of a registered AMI for use in other resources.
data "aws_ami" "devopspractice" {
    executable_users = var.ami_data.executable_users
    most_recent = var.ami_data.most_recent # It will give the latest id of the ami, since we want latest one we keep always true
    # owners = []

    filter {
      name = var.ami_data.ami_name
      values = var.ami_data.ami_values
    }

    filter {
        name   = var.ami_data.device_type_name
        values = var.ami_data.device_type_values
    }

    filter {
        name   = var.ami_data.vr_type_name
        values = var.ami_data.vr_type_values
    }
}

# For every resource default vpc will be there, now we are going to get that vpc id
data "aws_vpc" "default" {
  default = true
}


output "ami_id" {
    value = {
        id = data.aws_ami.devopspractice.id
        vpc_Id = data.aws_vpc.default.id 
    }
  
}
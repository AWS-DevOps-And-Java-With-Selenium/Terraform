# Use this data source to get the ID of a registered AMI for use in other resources.
data "aws_ami" "devopspractice" {
    # executable_users = ["self"]
    most_recent = true # It will give the latest id of the ami, since we want latest one we keep always true
    owners = []

    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
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
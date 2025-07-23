
locals {
  # instance_type   = "t3.micro"
  instances    = {
            FrontEnd    = "t3.small"
            BackEnd     = "t2.micro"
            DataBase    = "t3.micro"
        }
}
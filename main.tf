module "ec2_instance" {
  source = "./modules/ec2"

  name = "single-instance1"

  instance_type               = "t2.micro"
  key_name                    = "jenKP"
  monitoring                  = true
  associate_public_ip_address = true
  

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

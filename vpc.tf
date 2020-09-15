module "vpc" {
  source  = "app.terraform.io/arb-testing/vpc/aws"
  version = "2.51.0"

  name = "my-vpc"
  cidr = "169.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["169.0.1.0/24", "169.0.2.0/24", "169.0.3.0/24"]
  public_subnets  = ["169.0.101.0/24", "169.0.102.0/24", "169.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
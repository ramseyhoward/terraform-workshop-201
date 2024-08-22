module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name           = "${var.prefix}-vpc"
  cidr           = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24"]
  azs            = ["usw2-az1"]

  tags = {
    Environment = var.environment
  }
}

locals {
  location      = "westus2"
  address_space = ["10.0.0.0/16"]
  subnet_names  = ["subnet1", "subnet2"]
  subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  tags = {
    CreatedBy   = var.createdby
    Subscription = var.subscription
  }
}

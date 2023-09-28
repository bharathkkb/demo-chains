
variable "project_id" {

}

module "network" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 6.0"
  project_id   = var.project_id
  network_name = "usc-vpc"
  subnets = [
    {
      subnet_name           = "usc-subnet-1"
      subnet_ip             = "10.10.10.0/24"
      subnet_region         = "us-central1"
      subnet_private_access = true
    },
    {
      subnet_name           = "usc-subnet-2"
      subnet_ip             = "10.10.20.0/24"
      subnet_region         = "us-central1"
      subnet_private_access = true
    },
  ]
}

output "vpc_id" {
  value = module.network.network_id
}

output "subnet_id" {
  value = module.network.subnets_ids[0]
}
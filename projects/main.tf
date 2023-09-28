variable "billing_account" {
}

variable "org_id" {
}

variable "folder_id" {
}

module "project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name              = "prj1-chains-testf2"
  random_project_id = true
  org_id            = var.org_id
  folder_id         = var.folder_id
  billing_account   = var.billing_account
  activate_apis = [
    "compute.googleapis.com",
    "logging.googleapis.com"
  ]
  disable_services_on_destroy = false
  disable_dependent_services  = false
}


output "project_id" {
  value = module.project.project_id
}
variable "project_id" {

}

variable "network_id" {

}

resource "random_pet" "compute" {
}

output "compute_id" {
  value = random_pet.compute.id
}
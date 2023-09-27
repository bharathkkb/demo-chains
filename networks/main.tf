variable "project_id" {

}

resource "random_pet" "network" {
}

output "network_id" {
  value = random_pet.network.id
}
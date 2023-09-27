variable "project_id" {

}

resource "random_pet" "logging" {
}

output "logging_id" {
  value = random_pet.logging.id
}
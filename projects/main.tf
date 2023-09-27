resource "random_pet" "project" {
}

output "project_id" {
  value = random_pet.project.id
}
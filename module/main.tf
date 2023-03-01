resource "google_artifact_registry_repository" "my-repo" {
  repository_id = var.artifact-config ["repository_id"]
  location      = var.artifact-config ["location"]
  description   = "Created by Terraform"
  format        = "DOCKER"
}


variable artifact-config  {
  type        = map(any)
  description = "please provide configuration for artifact"
  default = {
    location      = "us-central1"
    repository_id = "my-repository"
  }
}
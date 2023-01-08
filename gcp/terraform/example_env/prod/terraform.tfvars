terragrunt = {
  remote_state {
    backend = "gcs"
    config {
      bucket         = "gke-prod-remote-state"
      prefix         = "${path_relative_to_include()}"
      region         = "europe-west1"
      project        = "gke-prod"
    }
  }
}

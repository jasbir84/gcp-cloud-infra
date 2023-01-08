terragrunt = {
  include {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "git::ssh://git@github.com/jasbir84/cloud-infra.git//gcp/terraform/modules/gke"
  }
}

project = "gke-preprod"
cluster_name = "gke-preprod-cluster"
node_count = 1
max_node_count = 3
min_node_count = 1
node_count = 1
admin_username = "admin"
admin_password = "jassi123"
machine_type = "n1-standard-1"
disk_size_gb = "100"
master_zone = "europe-west1-b"
additional_zones = [
  "europe-west1-c",
  "europe-west1-d"
  ]
min_master_version = "1.9.6-gke.0"
initial_default_pool_name = "unused-default-pool"
default_pool_name = "default-pool"
daily_maintenance_window_start_time = "00:00"
env = "preprod"

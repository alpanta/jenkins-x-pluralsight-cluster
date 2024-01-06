module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.11.5"
  # insert the 1 required variable here
  gcp_project  = "jenkins-x-408420"
  cluster_name = "ps-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files-alpanta"
    prefix = "terraform/state"
  }
}

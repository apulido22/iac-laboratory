provider "google" {
  project = var.project_id
  region  = var.region
}

module "APIs" {
  source     = "./modules/Apis"
  project_id =  var.project_id
}

module "Kubernetes" {
  source       = "./modules/Kubernetes"
  project_id   = var.project_id
  cluster_name = var.cluster_name
  region       = var.region
  node_count   = var.node_count
  machine_type = var.machine_type
 # depends_on    = [module.APIs]
}


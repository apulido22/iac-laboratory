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
  zone         = var.zone
  node_count   = var.node_count
  machine_type = var.machine_type
  registry_url = module.artifact_registry.registry_url
  depends_on    = [module.APIs]
}

module "artifact_registry" {
  source    = "./modules/Registry"
  project_id = var.project_id
  region     = var.region
}
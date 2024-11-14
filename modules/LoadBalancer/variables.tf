# modules/Storage/variables.tf

variable "project_id" {
  description = "ID del proyecto de GCP"
  type        = string
}

variable "storage_bucket_name" {
  type = string
  description = "Nombre del bucket de almacenamiento para el sitio web"
}
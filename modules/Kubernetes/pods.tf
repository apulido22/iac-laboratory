resource "kubernetes_pod" "frontend" {
  metadata {
    name = "frontend"
    labels = {
      app = "frontend"
    }
  }

  spec {
    container {
      name  = "frontend-container"
      image = "${var.registry_url}/frontend:latest"  # Usa la URL del registry dinámicamente
      port {
        container_port = 80
      }
    }
  }
}

resource "kubernetes_pod" "function" {
  metadata {
    name = "function"
    labels = {
      app = "function"
    }
  }

  spec {
    container {
      name  = "function-container"
      image = "${var.registry_url}/function:latest"  # Usa la URL del registry dinámicamente
      port {
        container_port = 80
      }
    }
  }
}
terraform {
  required_providers {
    routeros = {
      source  = "terraform-routeros/routeros"
      version = "1.61.2"
    }
  }
}

provider "routeros" {
  hosturl  = var.MIKROTIK_URL
  username = var.MIKROTIK_USER
  password = var.MIKROTIK_PASS
  # insecure       = false
}

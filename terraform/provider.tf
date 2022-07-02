terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.10"
    }
  }
}

provider "proxmox" {
  pm_parallel       = 1
  pm_tls_insecure   = true
  pm_api_url        = var.pm_api_url
  # NEVER put secrets in files, better you load those as env. vars:
  # export PM_USER="terraform-prov@pve"
  # export PM_PASS="password"
}
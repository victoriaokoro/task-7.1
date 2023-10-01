# Sets global variables for this Terraform project.

variable app_name {
    default = "vickokextube"
}
variable location {
  default = "East US"
}

variable admin_username {
  default = "linux_admin"
}

variable client_id {

}

variable client_secret {

}

variable "resource_name" {
  default = "vickokextube_acr_aks_rg"
}

variable "k8_name" {
  default = "vickokextube-aks"
}
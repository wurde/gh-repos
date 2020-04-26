variable "github_organization" {
  default     = "Andys-Collab"
  description = "The GitHub Organization to manage."
}

variable "membership" {
  default = {
    "MosesSupposes"   = "admin"
    "Brandon-Pampuch" = "admin"
    "angel-torres"    = "admin"
  }
}

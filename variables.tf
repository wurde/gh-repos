variable "github_organization" {
  default = "Andys-Collab"
  description = "The GitHub Organization to manage."
}

variable "github_token" {
  type = string
  description = "The GitHub personal access token."
}

variable "membership" {
  default = {
    "MosesSupposes" = "admin"
    "Brandon-Pampuch" = "admin"
    "angel-torres" = "admin"
  }
}

variable "github_organization" {
  default = "Andys-Collab"
  description = "The GitHub Organization to manage."
}

variable "github_token" {
  type = string
  description = "The GitHub personal access token."
}

/**
 * Define membership
 */

resource "github_membership" "member_moses" {
  # (Required) The user to add.
  username = "MosesSupposes"

  # (Optional) The user role. Must be either `member` or `admin`.
  role = "admin"
}

resource "github_membership" "membership_brandon" {
  # (Required) The user to add.
  username = "Brandon-Pampuch"

  # (Optional) The user role. Must be either `member` or `admin`.
  role = "admin"
}

resource "github_membership" "membership_angel" {
  # (Required) The user to add.
  username = "angel-torres"

  # (Optional) The user role. Must be either `member` or `admin`.
  role = "admin"
}

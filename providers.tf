# Import GitHub resources

provider "github" {
  version = "~> 2.6"

  # This is the target GitHub organization to manage
  organization = var.github_organization
}

# Import GitHub resources

provider "github" {
  # This is the target GitHub organization to manage
  organization = var.github_organization

  # This is the GitHub personal access token.
  token = var.github_token
}

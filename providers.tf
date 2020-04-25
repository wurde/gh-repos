# Import GitHub resources

provider "github" {
  # This is the target GitHub organization to manage
  #organization = ""

  # Run outside an organization.
  individual = true

  # This is the GitHub personal access token.
  token = var.token
}

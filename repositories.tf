/**
 * Define Org repositories.
 */

resource "github_repository" "example" {
  name        = "example"
  description = "An MIT LICENSE file."

  topics = ["terraform", "github", "infrastructure-as-code"]

  default_branch     = "master"
  gitignore_template = "Node"
  license_template   = "mit"

  private      = false
  has_issues   = false
  has_projects = false
  has_wiki     = false

  delete_branch_on_merge = true
  auto_init              = true
}

resource "github_branch_protection" "example" {
  repository     = github_repository.example.name
  branch         = "master"
  enforce_admins = true
}

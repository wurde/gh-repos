# Provision a GitHub repository

resource "github_repository" "repo" {
  name = var.name

  description = var.description

  private = false

  homepage_url = "https://terraform.io/docs/providers/github"

  # https://github.com/topics
  topics = var.topics

  # https://github.com/github/choosealicense.com/tree/gh-pages/_licenses
  license_template = "mit"

  # I've never seen this maintained well over long-term.
  has_wiki = false

  # As much as I'd like a built-in kanban board, this solution is not robust enough.
  has_projects = false

  # Default branch of the repository.
  default_branch = "master"

  # Automatically delete head branch after a pull request is merged.
  delete_branch_on_merge = true

  # Produce initial commit to the repo.
  auto_init = true
}

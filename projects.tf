/**
 * Define the default Org project.
 */

resource "github_organization_project" "default" {
  name = "Org Project"
  body = "This is the default organization project."
}


resource "github_project_column" "backlog" {
  project = github_organization_project.default.id
  name    = "Backlog"
}

resource "github_project_column" "to_do" {
  project = github_organization_project.default.id
  name    = "To Do"
}

resource "github_project_column" "in_progress" {
  project = github_organization_project.default.id
  name    = "In Progress"
}

resource "github_project_column" "done" {
  project = github_organization_project.default.id
  name    = "Done"
}


/**
 * Define GitHub Teams.
 */

resource "github_team" "sillyhats" {
  name        = "sillyhats"
  description = "https://amazon.com/funny-hats"
}

/**
 * Define Team Membership.
 */

resource "github_team_membership" "sillyhats_maintainer" {
  team_id  = github_team.sillyhats.id
  username = "wurde"
  role     = "maintainer"
}

resource "github_team_membership" "sillyhats_members" {
  for_each = var.membership

  team_id  = github_team.sillyhats.id
  username = each.key
  role     = "member"
}

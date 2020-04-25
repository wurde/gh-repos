/**
 * Define membership
 */

resource "github_membership" "member_moses" {
  for_each = var.membership

  # (Required) The user to add.
  username = each.key

  # (Optional) The user role. Must be either `member` or `admin`.
  role = each.value
}

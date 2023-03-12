resource "github_repository" "github_repo_terraform01" {
  name                   = var.repository_name
  description            = var.repository_description
  visibility             = var.repository_visibility
  delete_branch_on_merge = var.repository_delete_branch_on_merge

  auto_init = true
}

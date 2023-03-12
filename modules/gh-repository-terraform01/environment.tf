# data "github_user" "current" {
#   username = ""
# }

resource "github_repository_environment" "git_environments" {
  for_each = var.environments

  environment = each.key
  repository  = github_repository.github_repo_terraform01.name

  deployment_branch_policy {
    protected_branches     = each.value.protected_branches
    custom_branch_policies = each.value.custom_branch_policies
  }
}

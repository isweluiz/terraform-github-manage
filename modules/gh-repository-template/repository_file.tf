# resource "github_repository_file" "github_repository_file_gitignore" {
#   repository          = github_repository.github_repo_ansible.name
#   branch              = "main"
#   file                = ".gitignore"
#   content             = "**/*.tfstate"
#   commit_message      = "Managed by Terraform"
#   commit_author       = "luiz"
#   commit_email        = "luiz.terraform@xpto.com"
#   overwrite_on_create = true
# }

resource "github_repository_file" "github_repository_file_readme" {
  repository          = github_repository.github_repo_terraform01.name
  branch              = "main"
  file                = "README.md"
  content             = "# Ansible Repository - Managed By Terraform\n Here we can manage our repository files"
  commit_message      = "Managed by Terraform"
  commit_author       = "terraform"
  commit_email        = "luiz.terraform@xpto.com"
  overwrite_on_create = true
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.18.0"
    }
  }
}

provider "github" {
  # Configuration options
  token = var.GITHUB_TOKEN # or `GITHUB_TOKEN`
}


# -------- Modules Start here 

module "gh-repository-terraform01" {
  source = "./modules/gh-repository-terraform01"

  repository_name                   = "terraform01"
  repository_description            = "Terraform Repository Managed"
  repository_visibility             = var.visibility
  repository_delete_branch_on_merge = var.delete_branch_on_merge
}

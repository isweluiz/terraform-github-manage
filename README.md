[![Terraform Syntax Check](https://github.com/isweluiz/terraform-github-manage/actions/workflows/01.terraform_check.yml/badge.svg?branch=main)](https://github.com/isweluiz/terraform-github-manage/actions/workflows/01.terraform_check.yml)

# Terraform-Github

With Terraform-Github, you can create, update, and delete Github repositories and organizations, manage collaborators and teams, and configure repository settings using a declarative configuration syntax.

### Getting Started
To get started with Terraform-Github, you will need to have Terraform installed on your local machine or CI/CD environment. You will also need to have a Github account and personal access token with appropriate permissions to manage repositories and organizations.

Clone the Terraform-Github repository to your local machine:

```bash
git clone https://github.com/isweluiz/terraform-github.git
``` 

Modify the `variables.tf` file to configure your Github account settings and repository details. For example:

```javascript
variable "GITHUB_TOKEN" {
  description = "Github personal access token"
}

// variable "github_organization" {
//   description = "Github organization name"
//   default     = "my-organization"
// }

variable "repository_name" {
  description = "Github repository name"
  default     = "my-repository"
}
```

- Run terraform init to download the required providers and modules.
- Run terraform plan to preview the changes that Terraform will make to your Github repositories and organizations.
- Run terraform apply to create or update your Github repositories and organizations.

### Features
Terraform-Github provides a number of features to manage your Github repositories and organizations:

- Create and delete Github repositories and organizations: Terraform-Github allows you to create and delete Github repositories and organizations using a simple declarative syntax.

- Manage collaborators and teams: Terraform-Github makes it easy to manage collaborators and teams for your Github repositories and organizations.

- Configure repository settings: Terraform-Github allows you to configure repository settings such as branch protection rules, issue and pull request templates, and more using a simple configuration syntax.

### License
Terraform-Github is open source software released under the MIT license.

### Copyright
(c) 2023, Luiz
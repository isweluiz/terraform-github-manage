variable "repository_delete_branch_on_merge" {
  type = string
}

variable "repository_visibility" {
  type = string
}

variable "repository_name" {
  type = string

}

variable "repository_description" {
  type = string

}


# variable "environments" {
#   type    = list(string)
#   default = ["development", "stage", "production"]
# }


variable "environments" {
  type = map(object({
    protected_branches     = bool
    custom_branch_policies = bool
  }))
  default = {
    development = {
      protected_branches     = false
      custom_branch_policies = true
    }
    stage = {
      protected_branches     = false
      custom_branch_policies = true
    }
    production = {
      protected_branches     = true
      custom_branch_policies = false
    }
  }
}

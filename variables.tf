variable "GITHUB_TOKEN" {
  type        = string
  description = "Github personal access token"
}

variable "delete_branch_on_merge" {
  type    = string
  default = "true"
}

variable "visibility" {
  type    = string
  default = "public"
}


# If not assigned in a tfvars files then you will be prompted via CLI.

variable "application_name" {

}

variable "environment_name" {

}

# Best to use a local export variable here this way you are not prompted
# for it at the  terraform cli.
# terraform101 $ export TF_VAR_api_key=foo
variable "api_key" {
  sensitive = true
}

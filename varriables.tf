# If not assigned in a tfvars files then you will be prompted via CLI.

variable "application_name" {

}

variable "environment_name" {

}

variable "api_key" {
  sensitive = true
}

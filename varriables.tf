# If not assigned in a tfvars files then you will be prompted via CLI.

variable "application_name" {
  type = string

}

variable "environment_name" {
  type = string

}

# Best to use a local export variable here this way you are not prompted
# for it at the  terraform cli.
# terraform101 $ export TF_VAR_api_key=foo
variable "api_key" {
  type      = string
  sensitive = true
}

variable "instance_count" {
  type = number
}

variable "enabled" {
  type = bool
}

### Colletion types
variable "regions" {
  type = list(any) # like python list/JS array
}
variable "region_instance_count" {
  type = map(any) # like python dictionary
}
variable "region_set" {
  type = set(string) # like python set
}

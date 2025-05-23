# If not assigned in a tfvars files then you will be prompted via CLI.

variable "application_name" {
  type = string

  validation { # condition is true then you're ok.
    condition     = length(var.application_name) <= 12
    error_message = "Application name must be less than or equal to 12 characters.}"
  }
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

  # Validation is used to check values meet specific ranges/requirements like try/except python statements.
  validation {
    condition     = var.instance_count >= local.min_nodes && var.instance_count <= local.max_nodes && var.instance_count % 2 != 0
    error_message = "Must be between 1 and 10 and never even!"
  }
}
variable "enabled" {
  type = bool
}

### Colletion types

# list: like python list/JS array
variable "regions" {
  type = list(any)
}
# map: like python dictionary
variable "region_instance_count" {
  type = map(any)
}
# set: like python set
variable "region_set" {
  type = set(string)
}
# complex object:  like class/object. You can create nested objects here, but try to avoid them.
variable "sku_settings" {
  type = object(
    {
      kind = string
      tier = string
    }
  )
}

# The output can be displayed on screen when running terraform apply.
# Outputs can be assigned input variables or local variables values.
# The name of the output can be anything and does not have to match the variable name.
output "application_name" {
  value = var.application_name
}

output "environment_name" {
  value = var.environment_name
}

output "environment_prefix" {
  value = local.environment_prefix
}

output "suffix" {
  value = random_string.suffix.result
}

# Discussion on secret values.
# Still be careful as 'terraofrm apply' will mark output as '<sensivtive>'
# but 'terraform output api_key' will show secret values!!!
# Also, the secret values are easily visible in terraform.tfstate.
# It is important that
# 1. You only executed terraform from trusted machines.
# 2. Emply terraform state backends that use data encryption to ensure your
# tf state files are encrypted at REST & the principle of least privilege is 
# applied. Only certain people should have access to your tf state files.
output "api_key" {
  value     = "${var.api_key}bar"
  sensitive = true
}

#### Collection types
output "primary_region" {
  value = var.regions[0] # like python list/JS array
}
output "primary_region_instance" {
  value = var.region_instance_count["eastus"]
}

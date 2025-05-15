# The output can be displayed on screen when running terraform apply.
# Outputs can be assigned input variables or local variables values.
output application_name {
    value = var.application_name
}

output environment_name {
    value = var.environment_name
}

output environment_prefix {
    value = local.environment_prefix
}

output suffix {
    value = random_string.suffix.result
}
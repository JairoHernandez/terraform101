# Resources produce an output.
resource "random_string" "suffix" {
    length = 5
    upper = false
    special = false
}

# When referencing a resource via string interpolation u need to reference by the type first!!
locals {
    environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

# ignore
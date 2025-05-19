# !!! tfvars being ussed in this way DOES NOT WORK for terraform.tfvars or *.auto.tfvars.

# Accessed with CLI flag -var-file dev.tfvars
# Or you organize under a folder with any name, in this case 'env'
# under the terraofmr root module and run with CLI flag
# Jairos-MBP:terraform101 jhern$ terraform apply -var-file ./env/test.tfvars
# Recommended to use this file whne separating out environments:
# dev, staging, production, etc.
environment_name = "test"

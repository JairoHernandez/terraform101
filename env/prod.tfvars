# !!! tfvars being ussed in this way DOES NOT WORK for terraform.tfvars or *.auto.tfvars.

# Accessed with CLI flag -var-file dev.tfvars
# Or you organize under a folder with any name, in this case 'env'
# under the terraofmr root module and run with CLI flag
# Jairos-MBP:terraform101 jhern$ terraform apply -var-file ./env/prod.tfvars
# Recommended to use this file whne separating out environments:
# dev, staging, production, etc.
environment_name = "prod"
instance_count   = 5
enabled          = false

### Collections
regions = ["westus", "eastus", "westus"] # list: like python list/JS array
region_instance_count = {                # map: like python dict
  "westus" = 4
  "eastus" = 8
}
region_set = ["westus", "eastus"] # set: like python set
sku_settings = {                  # complex object:  like class/object. You can create nested objects here, but try to avoid them.
  kind = "p"
  tier = "Business"
}

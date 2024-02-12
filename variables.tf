#Root Variables 
variable "root_id" {
  type = string 
  default = "Terraform"
}
variable "root_name"{
    type = string 
    default = "Terraform"
}

#connectivity settings 
variable "deploy_connectivity_resouces"{
    type = bool
    default = true
}
variable "connectivity_resources_location"{
    type = string 
    default = "eastus"
}
variable "subscription_id_connectivity" {
  type = string 
  default = "576d4ce7-611b-4d87-8c2f-716b957488c9"
}
variable "connectivity_resources_tags"{
    type = map(string)
    default = {
        resourcetype = "connectivtiy"
    }
}

#management settings 
variable "deploy_management_resources"{
    type = bool 
    default = true 
}
variable "log_retention_in_days"{
    type = number 
    default = 50
}
variable "security_alerts_email_address" {
  type = string 
  default = "rebaitarek54@gmail.com"
}
variable "management_resources_location" {
  type = string 
  default = "eastus"
}
variable "subscription_id_management" {
  type = string 
  default = "576d4ce7-611b-4d87-8c2f-716b957488c9"
}
variable "management_resources_tags"{
    type = map(string)
    default = {
        resourcetype = "management"
    }
}

#identity settings 
variable "deploy_identity_resources"{
    type = bool 
    default = true 
}
variable "subscription_id_identity"{
    type = string 
    default = "576d4ce7-611b-4d87-8c2f-716b957488c9"
}



variable "default_location" {
    type    = string
    default = "eastus"
}
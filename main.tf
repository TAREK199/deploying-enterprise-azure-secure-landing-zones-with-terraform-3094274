
# reference for azure root tenant id
data "azurerm_client_config" "core" {}


module "caf-enterprise-scale" {
        source = "Azure/caf-enterprise-scale/azurerm"
        # version = "5.0.3"
        #  version = "2.4.1"
        # version = "4.2.0"
        version = "~> 1.0.0"



        root_parent_id = data.azurerm_client_config.core.tenant_id
        root_id = var.root_id
        root_name = var.root_name
        # default_location = var.default_location

    deploy_management_resources = var.deploy_management_resources
    subscription_id_management = var.subscription_id_management
    configure_management_resources = local.configure_management_resources

    deploy_demo_landing_zones = true

    providers = {
        azurerm = azurerm
        azurerm.management = azurerm.management
        azurerm.connectivity = azurerm.connectivity
    }
}
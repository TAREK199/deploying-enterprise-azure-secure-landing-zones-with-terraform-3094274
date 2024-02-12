
# reference for azure root tenant id
data "azurerm_client_config" "core" {}


module "enterprise_scale" {
        source = "Azure/caf-enterprise-scale/azurerm"

        version = "~> 1.0.0"

        providers = {
        azurerm = azurerm
        azurerm.management = azurerm.management
        azurerm.connectivity = azurerm.connectivity
    }


        # Base module configuration settings.
        root_parent_id   = data.azurerm_client_config.core.tenant_id
        root_id          = var.root_id
        root_name        = var.root_name
        default_location = var.default_location

        # Control deployment of the core landing zone hierachy.
        deploy_demo_landing_zones      = true
        deploy_management_resources    = var.deploy_management_resources
        subscription_id_management     = var.subscription_id_management
        configure_management_resources = local.configure_management_resources



}
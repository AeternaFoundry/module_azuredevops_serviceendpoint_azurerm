resource "azuredevops_serviceendpoint_azurerm" "serviceendpoint_azurerms" {
  for_each = var.serviceendpoint_azurerms

  azurerm_spn_tenantid                   = each.value.azurerm_spn_tenantid
  project_id                             = each.value.project_id
  service_endpoint_name                  = each.value.service_endpoint_name
  azurerm_management_group_id            = each.value.azurerm_management_group_id
  azurerm_management_group_name          = each.value.azurerm_management_group_name
  azurerm_subscription_id                = each.value.azurerm_subscription_id
  azurerm_subscription_name              = each.value.azurerm_subscription_name
  description                            = each.value.description
  environment                            = each.value.environment
  resource_group                         = each.value.resource_group
  server_url                             = each.value.server_url
  service_endpoint_authentication_scheme = each.value.service_endpoint_authentication_scheme

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      serviceprincipalcertificate = credentials.value.serviceprincipalcertificate
      serviceprincipalid          = credentials.value.serviceprincipalid
      serviceprincipalkey         = credentials.value.serviceprincipalkey
    }
  }

  dynamic "features" {
    for_each = each.value.features != null ? [each.value.features] : []
    content {
      validate = features.value.validate
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}


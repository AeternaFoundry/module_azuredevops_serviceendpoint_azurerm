output "serviceendpoint_azurerms_id" {
  description = "Map of id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.id }
}
output "serviceendpoint_azurerms_authorization" {
  description = "Map of authorization values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.authorization }
}
output "serviceendpoint_azurerms_azurerm_management_group_id" {
  description = "Map of azurerm_management_group_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_management_group_id }
}
output "serviceendpoint_azurerms_azurerm_management_group_name" {
  description = "Map of azurerm_management_group_name values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_management_group_name }
}
output "serviceendpoint_azurerms_azurerm_spn_tenantid" {
  description = "Map of azurerm_spn_tenantid values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_spn_tenantid }
}
output "serviceendpoint_azurerms_azurerm_subscription_id" {
  description = "Map of azurerm_subscription_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_subscription_id }
}
output "serviceendpoint_azurerms_azurerm_subscription_name" {
  description = "Map of azurerm_subscription_name values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_subscription_name }
}
output "serviceendpoint_azurerms_credentials" {
  description = "Map of credentials values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => one(v.credentials) }
  sensitive   = true
}
output "serviceendpoint_azurerms_description" {
  description = "Map of description values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.description }
}
output "serviceendpoint_azurerms_environment" {
  description = "Map of environment values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.environment }
}
output "serviceendpoint_azurerms_features" {
  description = "Map of features values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => one(v.features) }
}
output "serviceendpoint_azurerms_project_id" {
  description = "Map of project_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.project_id }
}
output "serviceendpoint_azurerms_resource_group" {
  description = "Map of resource_group values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.resource_group }
}
output "serviceendpoint_azurerms_server_url" {
  description = "Map of server_url values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.server_url }
}
output "serviceendpoint_azurerms_service_endpoint_authentication_scheme" {
  description = "Map of service_endpoint_authentication_scheme values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.service_endpoint_authentication_scheme }
}
output "serviceendpoint_azurerms_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.service_endpoint_name }
}
output "serviceendpoint_azurerms_service_principal_id" {
  description = "Map of service_principal_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.service_principal_id }
}
output "serviceendpoint_azurerms_workload_identity_federation_issuer" {
  description = "Map of workload_identity_federation_issuer values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.workload_identity_federation_issuer }
}
output "serviceendpoint_azurerms_workload_identity_federation_subject" {
  description = "Map of workload_identity_federation_subject values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.workload_identity_federation_subject }
}


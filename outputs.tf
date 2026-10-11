output "serviceendpoint_azurerms_id" {
  description = "Map of id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_azurerms_authorization" {
  description = "Map of authorization values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_azurerms_azurerm_management_group_id" {
  description = "Map of azurerm_management_group_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no azurerm_management_group_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_management_group_id if v.azurerm_management_group_id != null && length(v.azurerm_management_group_id) > 0 }
}
output "serviceendpoint_azurerms_azurerm_management_group_name" {
  description = "Map of azurerm_management_group_name values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no azurerm_management_group_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_management_group_name if v.azurerm_management_group_name != null && length(v.azurerm_management_group_name) > 0 }
}
output "serviceendpoint_azurerms_azurerm_spn_tenantid" {
  description = "Map of azurerm_spn_tenantid values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no azurerm_spn_tenantid are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_spn_tenantid if v.azurerm_spn_tenantid != null && length(v.azurerm_spn_tenantid) > 0 }
}
output "serviceendpoint_azurerms_azurerm_subscription_id" {
  description = "Map of azurerm_subscription_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no azurerm_subscription_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_subscription_id if v.azurerm_subscription_id != null && length(v.azurerm_subscription_id) > 0 }
}
output "serviceendpoint_azurerms_azurerm_subscription_name" {
  description = "Map of azurerm_subscription_name values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no azurerm_subscription_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.azurerm_subscription_name if v.azurerm_subscription_name != null && length(v.azurerm_subscription_name) > 0 }
}
output "serviceendpoint_azurerms_credentials" {
  description = "Map of credentials values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no credentials are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "serviceendpoint_azurerms_description" {
  description = "Map of description values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_azurerms_environment" {
  description = "Map of environment values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no environment are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "serviceendpoint_azurerms_features" {
  description = "Map of features values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no features are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => one(v.features) if v.features != null && length(v.features) > 0 }
}
output "serviceendpoint_azurerms_project_id" {
  description = "Map of project_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_azurerms_resource_group" {
  description = "Map of resource_group values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no resource_group are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.resource_group if v.resource_group != null && length(v.resource_group) > 0 }
}
output "serviceendpoint_azurerms_server_url" {
  description = "Map of server_url values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no server_url are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.server_url if v.server_url != null && length(v.server_url) > 0 }
}
output "serviceendpoint_azurerms_service_endpoint_authentication_scheme" {
  description = "Map of service_endpoint_authentication_scheme values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no service_endpoint_authentication_scheme are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.service_endpoint_authentication_scheme if v.service_endpoint_authentication_scheme != null && length(v.service_endpoint_authentication_scheme) > 0 }
}
output "serviceendpoint_azurerms_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}
output "serviceendpoint_azurerms_service_principal_id" {
  description = "Map of service_principal_id values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no service_principal_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}
output "serviceendpoint_azurerms_workload_identity_federation_issuer" {
  description = "Map of workload_identity_federation_issuer values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no workload_identity_federation_issuer are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.workload_identity_federation_issuer if v.workload_identity_federation_issuer != null && length(v.workload_identity_federation_issuer) > 0 }
}
output "serviceendpoint_azurerms_workload_identity_federation_subject" {
  description = "Map of workload_identity_federation_subject values across all serviceendpoint_azurerms, keyed the same as var.serviceendpoint_azurerms except keys with no workload_identity_federation_subject are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azurerm.serviceendpoint_azurerms : k => v.workload_identity_federation_subject if v.workload_identity_federation_subject != null && length(v.workload_identity_federation_subject) > 0 }
}


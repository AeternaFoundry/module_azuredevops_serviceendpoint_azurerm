variable "serviceendpoint_azurerms" {
  description = <<EOT
Map of serviceendpoint_azurerms, attributes below
Required:
    - azurerm_spn_tenantid
    - project_id
    - service_endpoint_name
Optional:
    - azurerm_management_group_id
    - azurerm_management_group_name
    - azurerm_subscription_id
    - azurerm_subscription_name
    - description
    - environment
    - resource_group
    - server_url
    - service_endpoint_authentication_scheme
    - credentials (block):
        - serviceprincipalcertificate (optional)
        - serviceprincipalid (required)
        - serviceprincipalkey (optional)
    - features (block):
        - validate (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    azurerm_spn_tenantid                   = string
    project_id                             = string
    service_endpoint_name                  = string
    azurerm_management_group_id            = optional(string)
    azurerm_management_group_name          = optional(string)
    azurerm_subscription_id                = optional(string)
    azurerm_subscription_name              = optional(string)
    description                            = optional(string)
    environment                            = optional(string)
    resource_group                         = optional(string)
    server_url                             = optional(string)
    service_endpoint_authentication_scheme = optional(string)
    credentials = optional(object({
      serviceprincipalcertificate = optional(string)
      serviceprincipalid          = string
      serviceprincipalkey         = optional(string)
    }))
    features = optional(object({
      validate = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azurerms : (
        v.credentials == null || (v.credentials.serviceprincipalkey == null || (length(v.credentials.serviceprincipalkey) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azurerms : (
        v.credentials == null || (v.credentials.serviceprincipalcertificate == null || (length(v.credentials.serviceprincipalcertificate) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azurerms : (
        v.environment == null || (contains(["AzureCloud", "AzureChinaCloud", "AzureUSGovernment", "AzureGermanCloud", "AzureStack"], v.environment))
      )
    ])
    error_message = "must be one of: \"AzureCloud\", \"AzureChinaCloud\", \"AzureUSGovernment\", \"AzureGermanCloud\", \"AzureStack\""
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azurerms : (
        v.service_endpoint_authentication_scheme == null || (contains(["WorkloadIdentityFederation", "ManagedServiceIdentity", "ServicePrincipal"], v.service_endpoint_authentication_scheme))
      )
    ])
    error_message = "must be one of: \"WorkloadIdentityFederation\", \"ManagedServiceIdentity\", \"ServicePrincipal\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


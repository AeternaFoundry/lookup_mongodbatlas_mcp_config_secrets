output "mcp_config_secrets_lookup_mcp_config_id" {
  description = "Map of mcp_config_id values across all mcp_config_secrets_lookup, keyed the same as var.mcp_config_secrets_lookup except keys with no mcp_config_id are omitted"
  value       = { for k, v in data.mongodbatlas_mcp_config_secrets.mcp_config_secrets_lookup : k => v.mcp_config_id if v.mcp_config_id != null && length(v.mcp_config_id) > 0 }
}
output "mcp_config_secrets_lookup_org_id" {
  description = "Map of org_id values across all mcp_config_secrets_lookup, keyed the same as var.mcp_config_secrets_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.mongodbatlas_mcp_config_secrets.mcp_config_secrets_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "mcp_config_secrets_lookup_results" {
  description = "Map of results values across all mcp_config_secrets_lookup, keyed the same as var.mcp_config_secrets_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_mcp_config_secrets.mcp_config_secrets_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}


variable "mcp_config_secrets_lookup" {
  description = <<EOT
Map of mcp_config_secrets_lookup, attributes below
Required:
    - mcp_config_id
    - org_id
EOT

  type = map(object({
    mcp_config_id = string
    org_id        = string
  }))
}


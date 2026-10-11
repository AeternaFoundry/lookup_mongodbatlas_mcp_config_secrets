data "mongodbatlas_mcp_config_secrets" "mcp_config_secrets_lookup" {
  for_each = var.mcp_config_secrets_lookup

  mcp_config_id = each.value.mcp_config_id
  org_id        = each.value.org_id
}


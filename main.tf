resource "coder_devcontainer" "devcontainers" {
  for_each = var.devcontainers

  agent_id         = each.value.agent_id
  workspace_folder = each.value.workspace_folder
  config_path      = each.value.config_path
}


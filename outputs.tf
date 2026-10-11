output "devcontainers_id" {
  description = "Map of id values across all devcontainers, keyed the same as var.devcontainers except keys with no id are omitted"
  value       = { for k, v in coder_devcontainer.devcontainers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devcontainers_agent_id" {
  description = "Map of agent_id values across all devcontainers, keyed the same as var.devcontainers except keys with no agent_id are omitted"
  value       = { for k, v in coder_devcontainer.devcontainers : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "devcontainers_config_path" {
  description = "Map of config_path values across all devcontainers, keyed the same as var.devcontainers except keys with no config_path are omitted"
  value       = { for k, v in coder_devcontainer.devcontainers : k => v.config_path if v.config_path != null && length(v.config_path) > 0 }
}
output "devcontainers_subagent_id" {
  description = "Map of subagent_id values across all devcontainers, keyed the same as var.devcontainers except keys with no subagent_id are omitted"
  value       = { for k, v in coder_devcontainer.devcontainers : k => v.subagent_id if v.subagent_id != null && length(v.subagent_id) > 0 }
}
output "devcontainers_workspace_folder" {
  description = "Map of workspace_folder values across all devcontainers, keyed the same as var.devcontainers except keys with no workspace_folder are omitted"
  value       = { for k, v in coder_devcontainer.devcontainers : k => v.workspace_folder if v.workspace_folder != null && length(v.workspace_folder) > 0 }
}


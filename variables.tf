variable "devcontainers" {
  description = <<EOT
Map of devcontainers, attributes below
Required:
    - agent_id
    - workspace_folder
Optional:
    - config_path
EOT

  type = map(object({
    agent_id         = string
    workspace_folder = string
    config_path      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.devcontainers : (
        length(v.workspace_folder) > 0
      )
    ])
    error_message = "must not be empty"
  }
}


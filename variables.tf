variable "request_conditions" {
  description = <<EOT
Map of request_conditions, attributes below
Required:
    - approval_sequence_id
    - name
    - resource_id
Optional:
    - description
    - priority
    - status
    - access_duration_settings (block):
        - duration (optional)
        - type (optional)
    - access_scope_settings (block):
        - ids (optional, block):
            - id (optional)
        - type (required)
    - requester_settings (block):
        - ids (optional, block):
            - id (optional)
        - type (required)
EOT

  type = map(object({
    approval_sequence_id = string
    name                 = string
    resource_id          = string
    description          = optional(string)
    priority             = optional(number)
    status               = optional(string)
    access_duration_settings = optional(list(object({
      duration = optional(string)
      type     = optional(string)
    })))
    access_scope_settings = optional(list(object({
      ids = optional(list(object({
        id = optional(string)
      })))
      type = string
    })))
    requester_settings = optional(list(object({
      ids = optional(list(object({
        id = optional(string)
      })))
      type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.request_conditions : (
        v.status == null || (contains(["ACTIVE", "INACTIVE"], v.status))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.request_conditions : (
        v.access_duration_settings == null || alltrue([for item in v.access_duration_settings : (item.type == null || (contains(["ADMIN_FIXED_DURATION", "REQUESTER_SPECIFIED_DURATION"], item.type)))])
      )
    ])
    error_message = "must be one of: \"ADMIN_FIXED_DURATION\", \"REQUESTER_SPECIFIED_DURATION\""
  }
}


output "request_conditions_id" {
  description = "Map of id values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.id }
}
output "request_conditions_access_duration_settings" {
  description = "Map of access_duration_settings values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.access_duration_settings }
}
output "request_conditions_access_scope_settings" {
  description = "Map of access_scope_settings values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.access_scope_settings }
}
output "request_conditions_approval_sequence_id" {
  description = "Map of approval_sequence_id values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.approval_sequence_id }
}
output "request_conditions_created" {
  description = "Map of created values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.created }
}
output "request_conditions_created_by" {
  description = "Map of created_by values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.created_by }
}
output "request_conditions_description" {
  description = "Map of description values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.description }
}
output "request_conditions_last_updated" {
  description = "Map of last_updated values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.last_updated }
}
output "request_conditions_last_updated_by" {
  description = "Map of last_updated_by values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.last_updated_by }
}
output "request_conditions_name" {
  description = "Map of name values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.name }
}
output "request_conditions_priority" {
  description = "Map of priority values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.priority }
}
output "request_conditions_requester_settings" {
  description = "Map of requester_settings values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.requester_settings }
}
output "request_conditions_resource_id" {
  description = "Map of resource_id values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.resource_id }
}
output "request_conditions_status" {
  description = "Map of status values across all request_conditions, keyed the same as var.request_conditions"
  value       = { for k, v in okta_request_condition.request_conditions : k => v.status }
}


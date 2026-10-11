resource "okta_request_condition" "request_conditions" {
  for_each = var.request_conditions

  approval_sequence_id = each.value.approval_sequence_id
  name                 = each.value.name
  resource_id          = each.value.resource_id
  description          = each.value.description
  priority             = each.value.priority
  status               = each.value.status

  dynamic "access_duration_settings" {
    for_each = each.value.access_duration_settings != null ? each.value.access_duration_settings : []
    content {
      duration = access_duration_settings.value.duration
      type     = access_duration_settings.value.type
    }
  }

  dynamic "access_scope_settings" {
    for_each = each.value.access_scope_settings != null ? each.value.access_scope_settings : []
    content {
      dynamic "ids" {
        for_each = access_scope_settings.value.ids != null ? access_scope_settings.value.ids : []
        content {
          id = ids.value.id
        }
      }
      type = access_scope_settings.value.type
    }
  }

  dynamic "requester_settings" {
    for_each = each.value.requester_settings != null ? each.value.requester_settings : []
    content {
      dynamic "ids" {
        for_each = requester_settings.value.ids != null ? requester_settings.value.ids : []
        content {
          id = ids.value.id
        }
      }
      type = requester_settings.value.type
    }
  }
}


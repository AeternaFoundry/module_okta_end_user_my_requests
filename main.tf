resource "okta_end_user_my_requests" "end_user_my_requests" {
  for_each = var.end_user_my_requests

  entry_id = each.value.entry_id

  dynamic "requester_field_values" {
    for_each = each.value.requester_field_values != null ? each.value.requester_field_values : []
    content {
      id     = requester_field_values.value.id
      label  = requester_field_values.value.label
      type   = requester_field_values.value.type
      value  = requester_field_values.value.value
      values = requester_field_values.value.values
    }
  }
}


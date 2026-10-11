output "end_user_my_requests_id" {
  description = "Map of id values across all end_user_my_requests, keyed the same as var.end_user_my_requests except keys with no id are omitted"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "end_user_my_requests_entry_id" {
  description = "Map of entry_id values across all end_user_my_requests, keyed the same as var.end_user_my_requests except keys with no entry_id are omitted"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.entry_id if v.entry_id != null && length(v.entry_id) > 0 }
}
output "end_user_my_requests_requester_field_values" {
  description = "Map of requester_field_values values across all end_user_my_requests, keyed the same as var.end_user_my_requests except keys with no requester_field_values are omitted"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.requester_field_values if v.requester_field_values != null && length(v.requester_field_values) > 0 }
}
output "end_user_my_requests_status" {
  description = "Map of status values across all end_user_my_requests, keyed the same as var.end_user_my_requests except keys with no status are omitted"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.status if v.status != null && length(v.status) > 0 }
}


output "end_user_my_requests_id" {
  description = "Map of id values across all end_user_my_requests, keyed the same as var.end_user_my_requests"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.id }
}
output "end_user_my_requests_entry_id" {
  description = "Map of entry_id values across all end_user_my_requests, keyed the same as var.end_user_my_requests"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.entry_id }
}
output "end_user_my_requests_requester_field_values" {
  description = "Map of requester_field_values values across all end_user_my_requests, keyed the same as var.end_user_my_requests"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.requester_field_values }
}
output "end_user_my_requests_status" {
  description = "Map of status values across all end_user_my_requests, keyed the same as var.end_user_my_requests"
  value       = { for k, v in okta_end_user_my_requests.end_user_my_requests : k => v.status }
}


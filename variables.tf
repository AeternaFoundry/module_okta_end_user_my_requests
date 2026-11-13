variable "end_user_my_requests" {
  description = <<EOT
Map of end_user_my_requests, attributes below
Required:
    - entry_id
Optional:
    - requester_field_values (block):
        - id (required)
        - label (optional)
        - type (optional)
        - value (optional)
        - values (optional)
EOT

  type = map(object({
    entry_id = string
    requester_field_values = optional(list(object({
      id     = string
      label  = optional(string)
      type   = optional(string)
      value  = optional(string)
      values = optional(list(string))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.end_user_my_requests : (
        v.requester_field_values == null || alltrue([for item in v.requester_field_values : (item.type == null || (contains(["DURATION", "ISO_DATE", "MULTISELECT", "OKTA_USER_ID", "SELECT", "TEXT"], item.type)))])
      )
    ])
    error_message = "must be one of: \"DURATION\", \"ISO_DATE\", \"MULTISELECT\", \"OKTA_USER_ID\", \"SELECT\", \"TEXT\""
  }
}


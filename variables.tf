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
}


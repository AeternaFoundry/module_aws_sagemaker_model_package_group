variable "sagemaker_model_package_groups" {
  description = <<EOT
Map of sagemaker_model_package_groups, attributes below
Required:
    - model_package_group_name
Optional:
    - model_package_group_description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    model_package_group_name        = string
    model_package_group_description = optional(string)
    region                          = optional(string)
    tags                            = optional(map(string))
    tags_all                        = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_model_package_groups : (
        (length(v.model_package_group_name) >= 1 && length(v.model_package_group_name) <= 63) && (can(regex("^[0-9A-Za-z](-*[0-9A-Za-z]){0,62}$", v.model_package_group_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_model_package_groups : (
        v.model_package_group_description == null || (length(v.model_package_group_description) >= 1 && length(v.model_package_group_description) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
}


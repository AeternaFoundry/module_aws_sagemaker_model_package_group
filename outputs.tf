output "sagemaker_model_package_groups_id" {
  description = "Map of id values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_model_package_groups_arn" {
  description = "Map of arn values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_model_package_groups_model_package_group_description" {
  description = "Map of model_package_group_description values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.model_package_group_description if v.model_package_group_description != null && length(v.model_package_group_description) > 0 }
}
output "sagemaker_model_package_groups_model_package_group_name" {
  description = "Map of model_package_group_name values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.model_package_group_name if v.model_package_group_name != null && length(v.model_package_group_name) > 0 }
}
output "sagemaker_model_package_groups_region" {
  description = "Map of region values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_model_package_groups_tags" {
  description = "Map of tags values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_model_package_groups_tags_all" {
  description = "Map of tags_all values across all sagemaker_model_package_groups, keyed the same as var.sagemaker_model_package_groups"
  value       = { for k, v in aws_sagemaker_model_package_group.sagemaker_model_package_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


output "lakeformation_opt_ins_condition" {
  description = "Map of condition values across all lakeformation_opt_ins, keyed the same as var.lakeformation_opt_ins"
  value       = { for k, v in aws_lakeformation_opt_in.lakeformation_opt_ins : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "lakeformation_opt_ins_last_modified" {
  description = "Map of last_modified values across all lakeformation_opt_ins, keyed the same as var.lakeformation_opt_ins"
  value       = { for k, v in aws_lakeformation_opt_in.lakeformation_opt_ins : k => v.last_modified if v.last_modified != null && length(v.last_modified) > 0 }
}
output "lakeformation_opt_ins_last_updated_by" {
  description = "Map of last_updated_by values across all lakeformation_opt_ins, keyed the same as var.lakeformation_opt_ins"
  value       = { for k, v in aws_lakeformation_opt_in.lakeformation_opt_ins : k => v.last_updated_by if v.last_updated_by != null && length(v.last_updated_by) > 0 }
}
output "lakeformation_opt_ins_principal" {
  description = "Map of principal values across all lakeformation_opt_ins, keyed the same as var.lakeformation_opt_ins"
  value       = { for k, v in aws_lakeformation_opt_in.lakeformation_opt_ins : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "lakeformation_opt_ins_region" {
  description = "Map of region values across all lakeformation_opt_ins, keyed the same as var.lakeformation_opt_ins"
  value       = { for k, v in aws_lakeformation_opt_in.lakeformation_opt_ins : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lakeformation_opt_ins_resource_data" {
  description = "Map of resource_data values across all lakeformation_opt_ins, keyed the same as var.lakeformation_opt_ins"
  value       = { for k, v in aws_lakeformation_opt_in.lakeformation_opt_ins : k => v.resource_data if v.resource_data != null && length(v.resource_data) > 0 }
}


output "apm_traces_scheduled_queries_lookup_id" {
  description = "Map of id values across all apm_traces_scheduled_queries_lookup, keyed the same as var.apm_traces_scheduled_queries_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_apm_traces_scheduled_queries.apm_traces_scheduled_queries_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_traces_scheduled_queries_lookup_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_traces_scheduled_queries_lookup, keyed the same as var.apm_traces_scheduled_queries_lookup except keys with no apm_domain_id are omitted"
  value       = { for k, v in data.oci_apm_traces_scheduled_queries.apm_traces_scheduled_queries_lookup : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_traces_scheduled_queries_lookup_display_name" {
  description = "Map of display_name values across all apm_traces_scheduled_queries_lookup, keyed the same as var.apm_traces_scheduled_queries_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_apm_traces_scheduled_queries.apm_traces_scheduled_queries_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apm_traces_scheduled_queries_lookup_filter" {
  description = "Map of filter values across all apm_traces_scheduled_queries_lookup, keyed the same as var.apm_traces_scheduled_queries_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_apm_traces_scheduled_queries.apm_traces_scheduled_queries_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "apm_traces_scheduled_queries_lookup_scheduled_query_collection" {
  description = "Map of scheduled_query_collection values across all apm_traces_scheduled_queries_lookup, keyed the same as var.apm_traces_scheduled_queries_lookup except keys with no scheduled_query_collection are omitted"
  value       = { for k, v in data.oci_apm_traces_scheduled_queries.apm_traces_scheduled_queries_lookup : k => v.scheduled_query_collection if v.scheduled_query_collection != null && length(v.scheduled_query_collection) > 0 }
}


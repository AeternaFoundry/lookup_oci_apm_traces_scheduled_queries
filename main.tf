data "oci_apm_traces_scheduled_queries" "apm_traces_scheduled_queries_lookup" {
  for_each = var.apm_traces_scheduled_queries_lookup

  apm_domain_id = each.value.apm_domain_id
  display_name  = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


output "dialogflow_cx_generators_id" {
  description = "Map of id values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_generators_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_generators_display_name" {
  description = "Map of display_name values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_generators_language_code" {
  description = "Map of language_code values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no language_code are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "dialogflow_cx_generators_llm_model_settings" {
  description = "Map of llm_model_settings values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no llm_model_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => one(v.llm_model_settings) if v.llm_model_settings != null && length(v.llm_model_settings) > 0 }
}
output "dialogflow_cx_generators_model_parameter" {
  description = "Map of model_parameter values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no model_parameter are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => one(v.model_parameter) if v.model_parameter != null && length(v.model_parameter) > 0 }
}
output "dialogflow_cx_generators_name" {
  description = "Map of name values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_generators_parent" {
  description = "Map of parent values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "dialogflow_cx_generators_placeholders" {
  description = "Map of placeholders values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no placeholders are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => v.placeholders if v.placeholders != null && length(v.placeholders) > 0 }
}
output "dialogflow_cx_generators_prompt_text" {
  description = "Map of prompt_text values across all dialogflow_cx_generators, keyed the same as var.dialogflow_cx_generators except keys with no prompt_text are omitted"
  value       = { for k, v in google_dialogflow_cx_generator.dialogflow_cx_generators : k => one(v.prompt_text) if v.prompt_text != null && length(v.prompt_text) > 0 }
}


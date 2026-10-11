resource "google_dialogflow_cx_generator" "dialogflow_cx_generators" {
  for_each = var.dialogflow_cx_generators

  display_name    = each.value.display_name
  deletion_policy = each.value.deletion_policy
  language_code   = each.value.language_code
  parent          = each.value.parent

  prompt_text {
    text = each.value.prompt_text.text
  }

  dynamic "llm_model_settings" {
    for_each = each.value.llm_model_settings != null ? [each.value.llm_model_settings] : []
    content {
      model       = llm_model_settings.value.model
      prompt_text = llm_model_settings.value.prompt_text
    }
  }

  dynamic "model_parameter" {
    for_each = each.value.model_parameter != null ? [each.value.model_parameter] : []
    content {
      max_decode_steps = model_parameter.value.max_decode_steps
      temperature      = model_parameter.value.temperature
      top_k            = model_parameter.value.top_k
      top_p            = model_parameter.value.top_p
    }
  }

  dynamic "placeholders" {
    for_each = each.value.placeholders != null ? each.value.placeholders : []
    content {
      id   = placeholders.value.id
      name = placeholders.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


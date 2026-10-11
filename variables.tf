variable "dialogflow_cx_generators" {
  description = <<EOT
Map of dialogflow_cx_generators, attributes below
Required:
    - display_name
    - prompt_text (block):
        - text (optional)
Optional:
    - deletion_policy
    - language_code
    - parent
    - llm_model_settings (block):
        - model (optional)
        - prompt_text (optional)
    - model_parameter (block):
        - max_decode_steps (optional)
        - temperature (optional)
        - top_k (optional)
        - top_p (optional)
    - placeholders (block):
        - id (optional)
        - name (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    deletion_policy = optional(string)
    language_code   = optional(string)
    parent          = optional(string)
    prompt_text = object({
      text = optional(string)
    })
    llm_model_settings = optional(object({
      model       = optional(string)
      prompt_text = optional(string)
    }))
    model_parameter = optional(object({
      max_decode_steps = optional(number)
      temperature      = optional(number)
      top_k            = optional(number)
      top_p            = optional(number)
    }))
    placeholders = optional(list(object({
      id   = optional(string)
      name = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


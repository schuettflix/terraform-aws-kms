variable deletion_window_in_days {
  type        = number
  default     = 30
  description = "The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the customer master key (CMK)."
}

variable enable_key_rotation {
  type        = bool
  default     = false
  description = "Enables automatic rotation of the key material for the specified symmetric customer master key (CMK)."
}

variable description {
  type        = string
  default     = "Parameter Store KMS master key"
  description = "The description of the key as viewed in AWS console."
}

variable alias {
  type        = string
  default     = ""
  description = "The name of the alias. The name must start with the word `alias` followed by a forward slash."
}

variable policy {
  type        = string
  default     = ""
  description = "A KMS policy JSON document."
}

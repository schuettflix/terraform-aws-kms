output key_arn {
  value       = join("", aws_kms_key.default.*.arn)
  description = "Key Amazon Resource Name"
}

output key_id {
  value       = join("", aws_kms_key.default.*.key_id)
  description = "Key Id"
}

output alias_arn {
  value       = join("", aws_kms_alias.default.*.arn)
  description = "Alias Amazon Resource Name"
}

output alias_name {
  value       = join("", aws_kms_alias.default.*.name)
  description = "Alias name"
}

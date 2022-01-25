resource aws_kms_key default {
  deletion_window_in_days = var.deletion_window_in_days
  description             = var.description
  enable_key_rotation     = var.enable_key_rotation
  policy                  = var.policy
}

resource aws_kms_alias default {
  name          = format("alias/%v", var.alias)
  target_key_id = join("", aws_kms_key.default.*.id)
}

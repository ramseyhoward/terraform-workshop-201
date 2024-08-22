variable "prefix" {
  description = "Prefix for resources being created"
  type        = string
  default     = "ramsey-workshop"
}

variable "environment" {
  description = "Environment being deployed to"
  type        = string
  default     = "sandbox"
}

variable "prefix" {
  description = "Prefix for resources being created"
  type        = string
  default     = "ramsey-workshop"
}

variable "subscription" {
  description = "Subscription being deployed to"
  type = string
}

variable "createdby" {
  description = "Creator of this resource"
  type = string
}

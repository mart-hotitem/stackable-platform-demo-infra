variable "ionos_token" {
  description = "IONOS Cloud API token"
  type        = string
  sensitive   = true
}

variable "nodepool_enabled" {
  description = "Enable or disable the demo node pool"
  type        = bool
  default     = true
}
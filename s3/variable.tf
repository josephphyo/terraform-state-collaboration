variable "name" {
  type        = string
  description = "This is instance created with terraform"
  validation {
    condition     = can(regex("^[a-zA-Z0-9]{4,10}$", var.name))
    error_message = "The bucket name should not include special character."
  }
}

variable "is_public" {
  default     = false
  type        = bool
  description = "false for private bucket - true for public bucket"
}


variable "tag_name" {
  default     = "opslab-phyominhtun"
  type        = string
  description = "Tagging Name"
}

variable "tag_env" {
  default     = "development"
  type        = string
  description = "Tagging Environment"
}


variable "auto_generate_name" {
  type        = bool
  default     = true
  description = "Flag to control if the server name should be automaticly generated"
}

variable "name_prefix" {
  type        = string
  default     = "server"
  description = "Prefix for auto generated names."
}

variable "name" {
  type        = string
  default     = "server"
  description = "Name for the server. Will only be used if auto_generate_name is true"
}

variable "server_type" {
  type        = string
  description = "Server type to use."
}

variable "location" {
  type        = string
  description = "The location the server should be created at."
}

variable "image" {
  type        = string
  description = "OS image to use for the created server."
}

variable "labels" {
  type        = map(string)
  description = "Labels to give the created server."
  default     = {}
}

variable "ipv4_enabled" {
  type        = bool
  default     = true
  description = "Flag indicating if a ipv4 should be created for the server."
}

variable "ipv6_enabled" {
  type        = bool
  default     = true
  description = "Flag indicating if a ipv6 should be created for the server."
}

variable "firewall_ids" {
  type        = set(number)
  default     = []
  description = "Ids of the firewalls the servers should be behind."
}

variable "ssh_key_ids" {
  type        = set(string)
  default     = []
  description = "Ids of the ssh keys to add to the servers."
}

variable "user_data" {
  type        = string
  default     = ""
  description = "cloud-config.yaml to automate first time setup."
}

variable "subnet_id" {
  type        = string
  description = "Id of the subnet the servers should be added to."
  default     = ""
}

variable "load_balancer_id" {
  type        = number
  default     = 0
  description = "Id of the loadbalancer the servers should be attached to."
}

variable "delete_protection" {
  type        = bool
  default     = false
  description = "Flag to control if the resources should have delete protection on."
}

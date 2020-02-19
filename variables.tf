variable "do_token" {
  type        = string
  description = "DigitalOcean authentication token."
}

variable "droplet_name" {
  type        = string
  description = "Name of the DigitalOcean droplet. Must be unique."
}

variable "tags" {
  description = "Tags to set on the droplet."
  type        = list(string)
  default     = []
}

variable "image" {
  description = "Image slug for the desired image. See 'available-images.txt' for a list."
  type        = string
  default     = "ubuntu-18-04-x64"

}

variable "region" {
  description = "Region to assign the droplet to."
  type        = string
  default     = "nyc3"
}

variable "size" {
  description = "Droplet size"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "ssh_keys" {
  description = "List of SSH IDs or fingerprints to enable. They must already exist in your DO account."
  type        = list(string)
}

variable "ssh_key_file" {
  description = "SSH key file to add to the droplet in addition to the \"ssh_keys\" variable."
  type        = string
  default     = ""
}

variable "init_script" {
  description = "Initialization script to run"
  default     = "./init.sh"
}

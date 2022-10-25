variable "account_file" {
  description = "account credentials"
  type        = string
  default     = env("GOOGLE_APPLICATION_CREDENTIALS")
}

variable "ssh_username" {
  description = "username to connect to SSH with. Required if using SSH."
  type        = string
  default     = "root"
}

variable "image_prefix" {
  description = "prefix of Image name"
  type        = string
  default     = "packer-gce"
}

variable "project_id" {
  description = "project id"
  type        = string
  default     = "gcp_project_id"
}

variable "zone" {
  description = "zone in which to launch the instance used to create the image"
  type        = string
  default     = "asia-southeast1-a"
}

variable "source_image_family" {
  description = "image family to use to create the new image from"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "disk_type" {
  description = "disk used to back your instance, like pd-ssd or pd-standard"
  type        = string
  default     = "pd-standard"
}

variable "machine_type" {
  description = "The machine type"
  type        = string
  default     = "n1-standard-1"
}

variable "disk_size" {
  description = "The size of the disk in GB"
  type        = string
  default     = "20"
}

variable "network" {
  description = "The Google Compute network id or URL to use for the launched instance"
  type        = string
  default     = "temp-vpc-dev"
}

variable "subnetwork" {
  description = "The Google Compute subnetwork id or URL to use for the launched instance"
  type        = string
  default     = "temp-subnet-dev"
}

variable "image_description" {
  description = "The description of the resulting image"
  type        = string
  default     = "Custom image for nginx server"
}

variable "image_storage_locations" {
  description = "Storage location, either regional or multi-regional"
  type        = list(string)
  default     = ["asia-southeast1"]
}

variable "image_labels" {
  description = "Key/value pair labels to apply to the created image"
  type        = map(string)
  default     = { "env" : "development" }
}


locals {
  timestamp  = regex_replace(timestamp(), "[- TZ:]", "")
  image_name = "${var.image_prefix}-${local.timestamp}"
}

source "googlecompute" "machine" {
  account_file            = "${var.account_file}"
  image_name              = "${local.image_name}"
  project_id              = "${var.project_id}"
  zone                    = "${var.zone}"
  network                 = "${var.network}"
  subnetwork              = "${var.subnetwork}"
  ssh_username            = "${var.ssh_username}"
  source_image_family     = "${var.source_image_family}"
  disk_type               = "${var.disk_type}"
  disk_size               = "${var.disk_size}"
  machine_type            = "${var.machine_type}"
  image_description       = "${var.image_description}"
  image_storage_locations = "${var.image_storage_locations}"
  image_labels            = "${var.image_labels}"
}

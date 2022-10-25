build {
  sources = [
    "sources.googlecompute.machine"
  ]

  provisioner "shell" {
    inline = [
      "apt-get update"
    ]
  }

  provisioner "shell" {
    script = "./scripts/bootstrap.sh"
  }
}

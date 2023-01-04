terraform {
  cloud {
    hostname = "tfe-server.inside-terraform.com"
    organization = "Insideinfo"

    workspaces {
      name = "tfelabs"
    }
  }
}

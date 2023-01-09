terraform {
  cloud {
    hostname = "tfe-kbcapital.euisang.inside-terraform.com"
    organization = "kbCapital-Test"

    workspaces {
      name = "kbcapital"
    }
  }
}

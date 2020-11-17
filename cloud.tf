terraform {
  backend "remote" {
    organization = "opslab"

    workspaces {
      name = "terraform-state-collaboration"
    }
  }
}

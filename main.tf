
terraform {
  required_version = "~> 1.0"

  backend "remote" {
    organization = "k2ss"

    workspaces {
      name = "github-settings"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {}

module "settings" {
  repository = var.repository
  by_terraform_secret = var.by_terraform_secret
  source = "./modules"
}

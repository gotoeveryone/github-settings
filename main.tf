
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

resource "github_actions_secret" "test_secret" {
  repository      = var.repository
  secret_name     = "TEST_SECRET"
  plaintext_value = var.test_secret_value
}

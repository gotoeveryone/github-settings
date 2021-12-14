resource "github_actions_secret" "test_secret" {
  repository       = var.repository
  secret_name      = "BY_TERRAFORM"
  plaintext_value  = var.by_terraform_secret
}

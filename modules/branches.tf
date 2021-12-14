resource "github_branch_protection" "main" {
  repository_id = var.repository

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    strict   = false
    contexts = ["Terraform"]
  }

  required_pull_request_reviews {
    required_approving_review_count = 1
  }
}

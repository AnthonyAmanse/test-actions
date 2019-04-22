workflow "New workflow" {
  on = "push"
  resolves = ["HTTP client", "GitHub Action for Slack"]
}

action "HTTP client" {
  uses = "swinton/httpie.action@8ab0a0e926d091e0444fcacd5eb679d2e2d4ab3d"
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@2a8ddb6db23f71a413f9958ae75bbc32bbaa6385"
  secrets = ["GITHUB_TOKEN"]
  env = {
    TEST = "test"
  }
}

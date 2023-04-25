workflow "New workflow" {
  resolves = ["PR label by Files"]
  on = "pull_request"
}

action "PR label by Files" {
  uses = "decathlon/pull-request-labeler-action@v1.0.0"
  secrets = ["GITHUB_TOKEN"]
}

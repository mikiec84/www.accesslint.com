workflow "AccessLint" {
  resolves = ["build", "serve", "scan"]
  on = "pull_request"
}

action "build" {
  uses = "AccessLint/github-actions@cundiff/sandbox"
  runs = "bundle install"
}

action "serve" {
  uses = "AccessLint/github-actions@cundiff/sandbox"
  needs = "build"
  runs = "bundle exec middleman"
}

action "scan" {
  uses = "AccessLint/github-actions@cundiff/sandbox"
  needs = "serve"
  runs = "accesslint-ci scan"
  args = "localhost:4567"
}

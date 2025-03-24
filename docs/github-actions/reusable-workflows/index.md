# Reusable workflows in GitHub Actions

## Usage

```yaml
jobs:
  # [...]
  job-name-here:
    # To get updates, always point to main although things might be unstable.
    # It's recommended to lock to a commit SHA for additional security. We'll do releases soon then.
    uses: recaptime-dev/cicd-toolkit/.github/workflows/<workflow-file-here>.yml@main
    with:
      # pass workflow inputs here
    secrets:
      # check docs on which secrets to pass, or..
      inherit: true
```

## Available reusable workflows

* [Build Mkdocs site](./mkdocs-build.md)
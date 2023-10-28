# Using reusable GitHub Actions workflows

## Usage

```yml
jobs:
  # [...]
  job-name-here:
    # To get updates, always point to main although things might be unstable.
    # It's recommended to lock to a commit SHA for additional security. We'll do releases soon then.
    uses: recaptime-dev/cicd-toolkit/.github/workflows/<workflow-file-here>.yml@main
    with:
      # pass workflow inputs here
    secrets:
      DOPPLER_TOKEN; ${{ secrets.DOPPLER_TOKEN }} # only pass if documented and required
      # pass other secrets here
```

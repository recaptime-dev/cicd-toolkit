# Build Mkdocs site

[![experimental](http://badges.github.io/stability-badges/dist/experimental.svg)](../../../maintainer-guide/stability-levels.md#1---experimental)
![Static Badge](https://img.shields.io/badge/GitHub%20Actions-compatible-green?style=flat-square&logo=github)

!!! danger "This tool in CI/CD Toolkit is experimental, proceed at your own risk"
    This tool is currently undergo early or active development, and its use outside Recap Time Squad
    projects is not recommended due to breaking changes that may not be SemVer compatible,
    although we welcome feedback to help squash bugs and add features.

## Usage

```yaml title=".github/workflows/pages.yml"
name: Documentation

on:
  push:
    branches: ["main"]
    paths:
      - docs/**/*.md
      - docs/*.md
      - mkdocs.yml
      - .github/workflows/docs.yml
      - .github/workflows/mkdocs-build.yml

jobs:
  meta:
    uses: recaptime-dev/cicd-toolkit/.github/workflows/mkdocs-build.yml@main
    secrets: inherit
    with:
      # see options section below for supported options
      config: mkdocs.yml
      deploy-to: cf-pages
      cf-pages-project: recaptime-dev
    permissions:
      pages: write
      id-token: write
      contents: read
```

## Options

!!! warning "Supported options still being ironed out"

### `config`

**Required**: Yes, but defaults to `mkdocs.yml` if left blank.

Path to Mkdocs config file to be used by the action container to run `mkdocs build.`

### `use-venv`

**Required**: No, currently handled through `Pipfile.lock` detection.

When set to `true` or a `Pipfile.lock` is found within project root, the entrypoint
script will create a Python virtual environment using the
`#!bash pipenv install --ignore-pipenv --deploy` command.

## Links

* [See source workflow YAML](https://github.com/recaptime-dev/cicd-toolkit/blob/main/.github/workflows/mkdocs-build.yml)
* [Build Mkdocs site over Docker container GitHub Action](../actions/mkdocs-build.md)
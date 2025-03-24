# Stability levels

We use these stability levels to communicate at which stability stage a specific toolkit
maintained by Recap Time Squad for CI/CD usage, based off [Node.js stability index][node-stability-index].

## Explained by level

### 0 - Deprecated

[![deprecated](http://badges.github.io/stability-badges/dist/deprecated.svg)](http://github.com/badges/stability-badges)

You may also see this following warning in its respective documentation:

!!! failure "This tool in CI/CD Toolkit is deprecated and may be removed in a future version"
    We no longer maintain this tool, and may emit deprecation warnings. Users of this tool
    are recommended to migrate to alternatives documented below or lock their version to
    specific Git commit hash (may involves building from source)

### 1 - Experimental

[![experimental](http://badges.github.io/stability-badges/dist/experimental.svg)](http://github.com/badges/stability-badges)

You may also see this following warning in its respective documentation:

!!! danger "This tool in CI/CD Toolkit is experimental, proceed at your own risk"
    This tool is currently undergo early or active development, and its use outside Recap Time Squad
    projects is not recommended due to breaking changes that may not be SemVer compatible,
    although we welcome feedback to help squash bugs and add features.

### 2 - Unstable

[![unstable](http://badges.github.io/stability-badges/dist/unstable.svg)](http://github.com/badges/stability-badges)

!!! warning "This tool in CI/CD Toolkit is unstable, proceed at your own risk"
    We're in the process of stabilizing this tool towards stable status.

### 3 - Stable

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

### 4 - Frozen

[![frozen](http://badges.github.io/stability-badges/dist/frozen.svg)](http://github.com/badges/stability-badges)

### 5 - Locked

[![locked](http://badges.github.io/stability-badges/dist/locked.svg)](http://github.com/badges/stability-badges)

!!! lock "This tool in CI/CD Toolkit is considered legacy and no longer maintained"
    Once in locked stage, we'll no longer maintain this tool for features or security patches,
    and considered as feature complete.

## Badge sources

We use <https://github.com/badges/stability-badges>

[node-stability-index]: https://nodejs.org/api/documentation.html#documentation_stability_index

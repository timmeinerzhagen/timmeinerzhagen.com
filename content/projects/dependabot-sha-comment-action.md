+++ 
draft = false
date = 2022-04-10T22:04:38-04:00
title = "dependabot-sha-comment-action"
description = "Helpful Action to keep Dependabot version upgrades readable in GitHub Actions"
tags = ["personal", "open-source", "cloud"]
weight = 80
+++

# dependabot-sha-comment-action

A tool that comments GitHub Actions that are pinned to commits SHAs whenever they are updated via Dependabot.

## The Problem with Actions

GitHub Actions is a great tool for CI/CD utilizing GitHubs vast community to easily share Actions, which simplify many use cases and integrations vastly.

One major issue of Actions is versioning, which is based on normal git tags. These tags are not immutable, thus attackers could easily delete a tag, introduce malicous code, and add the same tag again - anybody using that tag is now running the malicous code.

## The Solution

Instead of pinning to tags it is [encouraged to pin to commit SHAs instead](https://securitylab.github.com/research/github-actions-preventing-pwn-requests/). Dependabot can thankfully already update only using commit SHAs if you want that. The only issue is the lack of readability, which is entailed by the long randomized string that is a string. This tool is meant to make that easier by introducing and maintaining a simple comment for every pinned Action, that displays the version that corresponds to the given commit SHA.

```yml
- uses: actions/checkout@5a4ac9002d0be2fb38bd78e4b4dbde5606d7042f # v2.3.4
```

## References

See the GitHub project [`timmeinerzhagen/dependabot-sha-comment-action`](https://github.com/timmeinerzhagen/dependabot-sha-comment-action).

<div align="center">

# gh-copilot-cli

A hands-on demo showing how to use [GitHub Copilot in the CLI](https://docs.github.com/en/copilot/github-copilot-in-the-cli/about-github-copilot-in-the-cli) — get AI-powered command suggestions and explanations directly in your terminal.

[![GitHub Copilot](https://img.shields.io/badge/GitHub%20Copilot-required-blue?style=flat-square&logo=github)](https://github.com/features/copilot)
[![GitHub CLI](https://img.shields.io/badge/GitHub%20CLI-%3E%3D2.x-black?style=flat-square&logo=github)](https://cli.github.com/)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](LICENSE)

[Overview](#overview) • [Prerequisites](#prerequisites) • [Installation](#installation) • [Usage](#usage) • [Configuration](#configuration) • [Resources](#resources)

</div>

## Overview

This repository demonstrates how to supercharge your terminal workflow with **GitHub Copilot in the CLI** — a `gh` extension that understands natural language and translates it into shell commands, or explains existing ones.

Two core commands form the heart of the experience:

| Command | What it does |
|---|---|
| `gh copilot suggest` | Describes a task in plain English and gets back a ready-to-run shell command |
| `gh copilot explain` | Pastes a cryptic command and gets back a human-readable explanation |

## Prerequisites

Before you begin, make sure you have the following:

- **[GitHub CLI](https://cli.github.com/) v2.x or later** — install via your package manager or from the official site
- **A GitHub account authenticated with the CLI** — run `gh auth login` if needed
- **An active [GitHub Copilot](https://github.com/features/copilot) subscription** — Individual, Business, or Enterprise plans all work

> [!NOTE]
> GitHub Copilot in the CLI is available on all Copilot plans. If your organization manages Copilot for you, confirm that CLI access is enabled in your organization's settings.

## Installation

Install the Copilot extension for the GitHub CLI:

```bash
gh extension install github/gh-copilot
```

Verify the installation:

```bash
gh copilot --version
```

To keep the extension up to date, run:

```bash
gh extension upgrade gh-copilot
```

## Usage

### Suggest a command

Describe what you want to do in plain English, and Copilot will propose a shell command:

```bash
gh copilot suggest "list all running Docker containers and their port mappings"
```

Example output:

```
Suggestion:

  docker ps --format "table {{.Names}}\t{{.Ports}}"

? What would you like to do with this suggestion?
> Copy command to clipboard
  Execute command
  Revise command
  Exit
```

You can interactively choose to execute the command, copy it to your clipboard, revise your original request, or simply exit.

> [!TIP]
> Be as specific as possible when describing the task. The more context you give, the better the suggestion will be.

### Explain a command

Paste any shell command and Copilot will explain what it does in plain English:

```bash
gh copilot explain "git rebase -i HEAD~3"
```

Example output:

```
Explanation:

  git rebase -i HEAD~3

  Starts an interactive rebase session for the last 3 commits. You can use
  this to reorder, squash, edit commit messages, or drop commits before
  they are pushed to a shared branch.
```

This is especially useful when reading scripts, troubleshooting unfamiliar commands, or onboarding to a new codebase.

### Specify a shell target

Use the `--target` flag (or `-t`) to indicate the target shell if you are not using the default:

```bash
gh copilot suggest --target shell "compress a folder into a tar.gz archive"
```

Supported targets: `bash`, `zsh`, `fish`, `powershell`.

## Configuration

| Environment variable | Description |
|---|---|
| `GH_COPILOT_NO_TELEMETRY` | Set to `1` to opt out of usage telemetry |

> [!NOTE]
> GitHub Copilot in the CLI may send anonymized usage data to improve the product. Set `GH_COPILOT_NO_TELEMETRY=1` in your shell profile to disable this.

## Resources

- [About GitHub Copilot in the CLI](https://docs.github.com/en/copilot/github-copilot-in-the-cli/about-github-copilot-in-the-cli) — official documentation
- [GitHub CLI](https://cli.github.com/) — the `gh` CLI tool that hosts the extension
- [GitHub Copilot plans](https://github.com/features/copilot) — subscription options and feature comparison
- [gh-copilot extension on GitHub](https://github.com/github/gh-copilot) — source and issue tracker for the extension itself


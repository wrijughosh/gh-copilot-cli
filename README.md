# gh-copilot-cli

> **GitHub Copilot CLI Demo** — A demonstration repository for using GitHub Copilot in the command line.

## Overview

`gh-copilot-cli` showcases how to use the [GitHub Copilot CLI](https://docs.github.com/en/copilot/github-copilot-in-the-cli/about-github-copilot-in-the-cli) extension for the [GitHub CLI (`gh`)](https://cli.github.com/). GitHub Copilot in the CLI lets you get AI-powered command suggestions and explanations directly in your terminal, so you can spend less time searching documentation and more time writing code.

## Features

- **`gh copilot suggest`** — Ask Copilot to suggest a shell command for a task described in plain English.
- **`gh copilot explain`** — Ask Copilot to explain what a given shell command does.
- Interactive follow-up prompts to revise, execute, or copy the suggested command.
- Supports `bash`, `zsh`, `fish`, and other common shells.

## Prerequisites

- **[GitHub CLI](https://cli.github.com/)** `v2.x` or later installed and authenticated (`gh auth login`).
- An active **[GitHub Copilot](https://github.com/features/copilot)** subscription (Individual, Business, or Enterprise).

## Installation

Install the GitHub Copilot CLI extension with a single command:

```bash
gh extension install github/gh-copilot
```

Verify the installation:

```bash
gh copilot --version
```

## Usage

### Suggest a command

```bash
gh copilot suggest "<describe what you want to do>"
```

**Example:**

```bash
gh copilot suggest "list all running Docker containers and their port mappings"
```

Copilot will propose a command (e.g., `docker ps --format "table {{.Names}}\t{{.Ports}}"`). You can then choose to:
- **Execute** the command directly.
- **Copy** it to your clipboard.
- **Revise** your request and get a new suggestion.
- **Exit** without doing anything.

### Explain a command

```bash
gh copilot explain "<command you want to understand>"
```

**Example:**

```bash
gh copilot explain "git rebase -i HEAD~3"
```

Copilot will provide a plain-English explanation of what the command does.

## Configuration

You can configure the extension's behavior using environment variables or `gh` configuration:

| Option | Description | Default |
|--------|-------------|---------|
| `GH_COPILOT_NO_TELEMETRY` | Set to `1` to opt out of anonymous usage telemetry. | `0` |

## Updating

Keep the extension up to date with:

```bash
gh extension upgrade gh-copilot
```

## Contributing

Contributions, issues, and feature requests are welcome! Please feel free to:

1. [Open an issue](../../issues) to report a bug or suggest an enhancement.
2. Fork the repository, create a branch (`git checkout -b feature/your-feature`), commit your changes, and open a Pull Request.

Please follow the [GitHub Community Guidelines](https://docs.github.com/en/site-policy/github-terms/github-community-guidelines) when contributing.

## License

This project is licensed under the [MIT License](LICENSE).

---

*For more information, see the [official GitHub Copilot CLI documentation](https://docs.github.com/en/copilot/github-copilot-in-the-cli/about-github-copilot-in-the-cli).*

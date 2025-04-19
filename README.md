# 🛠️ dotbins Tool Collection

[![dotbins](https://img.shields.io/badge/powered%20by-dotbins-blue.svg?style=flat-square)](https://github.com/basnijholt/dotbins) [![Version](https://img.shields.io/badge/version-2.1.0-green.svg?style=flat-square)](https://github.com/basnijholt/dotbins/releases)

This directory contains command-line tools automatically managed by [dotbins](https://github.com/basnijholt/dotbins).

## 📋 Table of Contents

- [What is dotbins?](#-what-is-dotbins)
- [Installed Tools](#-installed-tools)
- [Tool Statistics](#-tool-statistics)
- [Shell Integration](#-shell-integration)
- [Installing and Updating Tools](#-installing-and-updating-tools)
- [Quick Commands](#-quick-commands)
- [Configuration File](#-configuration-file)
- [Additional Information](#ℹ️-additional-information)

## 📦 What is dotbins?

**dotbins** is a utility for managing CLI tool binaries in your dotfiles repository. It downloads and organizes binaries for popular command-line tools across multiple platforms (macOS, Linux) and architectures (amd64, arm64).

**Key features:**

- ✅ **Cross-platform support** - Manages tools for different OSes and CPU architectures
- ✅ **No admin privileges** - Perfect for systems where you lack sudo access
- ✅ **Version tracking** - Keeps track of installed tools with update timestamps
- ✅ **GitHub integration** - Automatically downloads from GitHub releases
- ✅ **Simple configuration** - YAML-based config with auto-detection capabilities

Learn more: [github.com/basnijholt/dotbins](https://github.com/basnijholt/dotbins)

## 🔍 Installed Tools

| Tool | Repository | Version | Updated | Platforms & Architectures |
| :--- | :--------- | :------ | :------ | :------------------------ |
| [bat](https://github.com/sharkdp/bat) | sharkdp/bat | 0.25.0 | Apr 17, 2025 | macos (arm64) |
| [delta](https://github.com/dandavison/delta) | dandavison/delta | 0.18.2 | Apr 12, 2025 | macos (arm64) |
| [fd](https://github.com/sharkdp/fd) | sharkdp/fd | 10.2.0 | Apr 17, 2025 | macos (arm64) |
| [fzf](https://github.com/junegunn/fzf) | junegunn/fzf | 0.61.1 | Apr 17, 2025 | macos (arm64) |
| [git-lfs](https://github.com/git-lfs/git-lfs) | git-lfs/git-lfs | 3.6.1 | Apr 17, 2025 | macos (arm64) |
| [glow](https://github.com/charmbracelet/glow) | charmbracelet/glow | 2.1.0 | Apr 17, 2025 | macos (arm64) |
| [jq](https://github.com/jqlang/jq) | jqlang/jq | jq-1.7.1 | Apr 13, 2025 | macos (arm64) |
| [lazygit](https://github.com/jesseduffield/lazygit) | jesseduffield/lazygit | 0.49.0 | Apr 17, 2025 | macos (arm64) |
| [nu](https://github.com/nushell/nushell) | nushell/nushell | 0.103.0 | Apr 12, 2025 | macos (arm64) |
| [rg](https://github.com/BurntSushi/ripgrep) | BurntSushi/ripgrep | 14.1.1 | Apr 12, 2025 | macos (arm64) |
| [rip](https://github.com/MilesCranmer/rip2) | MilesCranmer/rip2 | 0.9.3 | Apr 17, 2025 | macos (arm64) |
| [uv](https://github.com/astral-sh/uv) | astral-sh/uv | 0.6.14 | Apr 12, 2025 | macos (arm64) |
| [xcbeautify](https://github.com/cpisciotta/xcbeautify) | cpisciotta/xcbeautify | 2.28.0 | Apr 13, 2025 | macos (arm64) |
| [yazi](https://github.com/sxyazi/yazi) | sxyazi/yazi | 25.4.8 | Apr 17, 2025 | macos (arm64) |
| [yq](https://github.com/mikefarah/yq) | mikefarah/yq | 4.45.1 | Apr 17, 2025 | macos (arm64) |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | ajeetdsouza/zoxide | 0.9.7 | Apr 17, 2025 | macos (arm64) |

## 📊 Tool Statistics

<div align='center'><h3>📦 16 Tools | 💾 166.16 MB Total Size</h3></div>

| Tool | Total Size | Avg Size per Architecture |
| :--- | :-------- | :------------------------ |
| nu | 37.21 MB | 37.21 MB |
| uv | 32.22 MB | 32.22 MB |
| lazygit | 20.01 MB | 20.01 MB |
| glow | 16.13 MB | 16.13 MB |
| yazi | 11.86 MB | 11.86 MB |
| git-lfs | 11.58 MB | 11.58 MB |
| yq | 9.74 MB | 9.74 MB |
| delta | 5.76 MB | 5.76 MB |
| bat | 5.03 MB | 5.03 MB |
| rg | 4.17 MB | 4.17 MB |
| fzf | 3.97 MB | 3.97 MB |
| xcbeautify | 2.93 MB | 2.93 MB |
| fd | 2.58 MB | 2.58 MB |
| rip | 1.24 MB | 1.24 MB |
| zoxide | 961.14 KB | 961.14 KB |
| jq | 789.05 KB | 789.05 KB |

## 💻 Shell Integration

Add one of the following snippets to your shell configuration file to use the platform-specific binaries:

For **Bash**:
```bash
source $HOME/.config/dotbins/shell/bash.sh
```

For **Zsh**:
```bash
source $HOME/.config/dotbins/shell/zsh.sh
```

For **Fish**:
```fish
source $HOME/.config/dotbins/shell/fish.fish
```

For **Nushell**:
```nu
source $HOME/.config/dotbins/shell/nushell.nu
```

## 🔄 Installing and Updating Tools

### Install or update all tools
```bash
dotbins sync
```

### Install or update specific tools only
```bash
dotbins sync tool1 tool2
```

### Install or update for current platform only
```bash
dotbins sync --current
```

### Force reinstall of all tools
```bash
dotbins sync --force
```


## 🚀 Quick Commands

<details>
<summary>All available commands</summary>

```
dotbins list           # List all available tools
dotbins init           # Initialize directory structure
dotbins sync           # Install and update tools to their latest versions
dotbins readme         # Regenerate this README
dotbins status         # Show installed tool versions
dotbins get REPO       # Install tool directly to ~/.local/bin
```

For detailed usage information, run `dotbins --help` or `dotbins <command> --help`
</details>

## 📁 Configuration File

dotbins is configured using a YAML file (`dotbins.yaml`).
This configuration defines which tools to manage, their sources, and platform compatibility.

**Current Configuration:**

```yaml
# Base configuration
tools_dir: ~/.config/dotbins
platforms:
    macos:
        - arm64

# Tools configuration
tools:
    # --- File viewers and formatters ---
    bat:
        repo: sharkdp/bat
        shell_code:
            zsh: |
                alias bat="bat --paging=never"
                alias cat="bat --plain --paging=never"
    delta:
        repo: dandavison/delta
        shell_code:
            zsh: |
                alias diff='delta'
    glow: charmbracelet/glow
    # --- Search and navigation tools ---
    fd:
        repo: sharkdp/fd
        shell_code:
            zsh: |
                alias find='fd'
    fzf:
        repo: junegunn/fzf
        shell_code:
            zsh: |
                source <(fzf --zsh)

    rg:
        repo: BurntSushi/ripgrep
        shell_code:
            zsh: |
                alias grep='rg'
    zoxide:
        repo: ajeetdsouza/zoxide
        shell_code:
            zsh: |
                eval "$(zoxide init zsh)"
    yazi: sxyazi/yazi
    # --- Git tools ---
    git-lfs: git-lfs/git-lfs
    lazygit:
        repo: jesseduffield/lazygit
        shell_code:
            zsh: |
                alias lg='lazygit'

    # --- File management ---
    rip:
        repo: MilesCranmer/rip2
        shell_code:
            zsh: |
                alias rm='rip'

    # --- JSON/YAML processors ---
    jq: jqlang/jq
    yq: mikefarah/yq

    # --- Shells and environments ---
    nu: nushell/nushell
    uv:
        repo: astral-sh/uv
        binary_name: [uv, uvx]
        path_in_archive: [uv-*/uv, uv-*/uvx]

    # --- Development tools ---
    xcbeautify: cpisciotta/xcbeautify
```

## ℹ️ Additional Information

* This README was automatically generated on Apr 18, 2025
* Current platform: **macos/arm64**
* For more information on dotbins, visit https://github.com/basnijholt/dotbins
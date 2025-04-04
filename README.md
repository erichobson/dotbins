# 🛠️ dotbins Tool Collection

[![dotbins](https://img.shields.io/badge/powered%20by-dotbins-blue.svg?style=flat-square)](https://github.com/basnijholt/dotbins) [![Version](https://img.shields.io/badge/version-1.1.1-green.svg?style=flat-square)](https://github.com/basnijholt/dotbins/releases)

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
| [bat](https://github.com/sharkdp/bat) | sharkdp/bat | 0.25.0 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [delta](https://github.com/dandavison/delta) | dandavison/delta | 0.18.2 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [fd](https://github.com/sharkdp/fd) | sharkdp/fd | 10.2.0 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [fzf](https://github.com/junegunn/fzf) | junegunn/fzf | 0.61.0 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [git-lfs](https://github.com/git-lfs/git-lfs) | git-lfs/git-lfs | 3.6.1 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [lazygit](https://github.com/jesseduffield/lazygit) | jesseduffield/lazygit | 0.48.0 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [nu](https://github.com/nushell/nushell) | nushell/nushell | 0.103.0 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [rg](https://github.com/BurntSushi/ripgrep) | BurntSushi/ripgrep | 14.1.1 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [rip](https://github.com/MilesCranmer/rip2) | MilesCranmer/rip2 | 0.9.3 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [uv](https://github.com/astral-sh/uv) | astral-sh/uv | 0.6.12 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [yazi](https://github.com/sxyazi/yazi) | sxyazi/yazi | 25.3.2 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [yq](https://github.com/mikefarah/yq) | mikefarah/yq | 4.45.1 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [zellij](https://github.com/zellij-org/zellij) | zellij-org/zellij | 0.42.1 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | ajeetdsouza/zoxide | 0.9.7 | Apr 04, 2025 | linux (amd64, arm64) • macos (arm64) |

## 📊 Tool Statistics

<div align='center'><h3>📦 42 Tools | 💾 560.8 MB Total Size</h3></div>

| Tool | Total Size | Avg Size per Architecture |
| :--- | :-------- | :------------------------ |
| nu | 125.49 MB | 41.83 MB |
| uv | 102.7 MB | 34.23 MB |
| zellij | 98.24 MB | 32.75 MB |
| lazygit | 54.16 MB | 18.05 MB |
| yazi | 37.4 MB | 12.47 MB |
| git-lfs | 34.49 MB | 11.5 MB |
| yq | 29.15 MB | 9.72 MB |
| delta | 18.64 MB | 6.21 MB |
| bat | 16.22 MB | 5.41 MB |
| rg | 15.46 MB | 5.15 MB |
| fzf | 11.29 MB | 3.76 MB |
| fd | 9.6 MB | 3.2 MB |
| rip | 4.81 MB | 1.6 MB |
| zoxide | 3.16 MB | 1.05 MB |

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
tools_dir: ~/.config/dotbins

platforms:
    linux:
        - amd64
        - arm64
    macos:
        - arm64

tools:
    zellij: zellij-org/zellij
    yq: mikefarah/yq
    # sk: skim-rs/skim
    nu: nushell/nushell

    git-lfs: git-lfs/git-lfs
    yazi: sxyazi/yazi

    lazygit:
        repo: jesseduffield/lazygit
        shell_code:
            zsh: |
                alias lg='lazygit'

    delta:
        repo: dandavison/delta
        shell_code:
            zsh: |
                alias diff='delta'

    fd:
        repo: sharkdp/fd
        shell_code:
            zsh: |
                alias find='fd'

    rip:
        repo: MilesCranmer/rip2
        shell_code:
            zsh: |
                alias rm='rip'

    rg:
        repo: BurntSushi/ripgrep
        shell_code:
            zsh: |
                alias grep='rg'

    bat:
        repo: sharkdp/bat
        shell_code:
            zsh: |
                alias bat="bat --paging=never"
                alias cat="bat --plain --paging=never"

    fzf:
        repo: junegunn/fzf
        shell_code:
            zsh: |
                source <(fzf --zsh)

    zoxide:
        repo: ajeetdsouza/zoxide
        shell_code:
            zsh: |
                eval "$(zoxide init zsh)"

    uv:
        repo: astral-sh/uv
        binary_name: [uv, uvx]
        path_in_archive: [uv-*/uv, uv-*/uvx]

    # atuin: atuinsh/atuin            # Shell history and recording tool
    # bandwhich: imsnif/bandwhich     # Terminal bandwidth utilization tool
    # btm: ClementTsang/bottom        # Graphical system monitor
    # btop: aristocratos/btop         # Resource monitor and process viewer
    # caddy: caddyserver/caddy        # Web server with automatic HTTPS
    # choose: theryangeary/choose     # Cut alternative with a simpler syntax
    # croc: schollz/croc              # File transfer tool with end-to-end encryption
    # ctop: bcicen/ctop               # Container metrics and monitoring
    # curlie: rs/curlie               # Curl wrapper with httpie-like syntax
    # difft: Wilfred/difftastic       # Structural diff tool that understands syntax
    # direnv: direnv/direnv           # Environment switcher for the shell
    # dog: ogham/dog                  # Command-line DNS client like dig
    # duf: muesli/duf                 # Disk usage analyzer with pretty output
    # dust: bootandy/dust             # More intuitive version of du (disk usage)
    # eget: zyedidia/eget             # Go single file downloader (similar to Dotbins)
    # eza: eza-community/eza          # Modern replacement for ls
    # fzf: junegunn/fzf               # Command-line fuzzy finder
    # glow: charmbracelet/glow        # Markdown renderer for the terminal
    # gping: orf/gping                # Ping with a graph
    # grex: pemistahl/grex            # Command-line tool for generating regular expressions from user-provided examples
    # gron: tomnomnom/gron            # Make JSON greppable
    # hexyl: sharkdp/hexyl            # Command-line hex viewer
    # hx: helix-editor/helix          # Modern text editor
    # hyperfine: sharkdp/hyperfine    # Command-line benchmarking tool
    # jc: kellyjonbrazil/jc           # JSON CLI output converter
    # jless: PaulJuliusMartinez/jless # Command-line JSON viewer
    # jq: jqlang/jq                   # Lightweight JSON processor
    # just: casey/just                # Command runner alternative to make
    # k9s: derailed/k9s               # Kubernetes CLI to manage clusters
    # lnav: tstack/lnav               # Log file navigator
    # lsd: lsd-rs/lsd                 # Next-gen ls command with icons and colors
    # mcfly: cantino/mcfly            # Fly through your shell history
    # micro: zyedidia/micro           # Modern and intuitive terminal-based text editor
    # micromamba: mamba-org/micromamba-releases # Conda-like distribution
    # navi: denisidoro/navi           # Interactive cheatsheet tool for the CLI
    # neovim: neovim/neovim           # Modern text editor
    # nu: nushell/nushell             # Modern shell for the GitHub era
    # pastel: sharkdp/pastel          # A command-line tool to generate, convert and manipulate colors
    # procs: dalance/procs            # Modern replacement for ps
    # rg: BurntSushi/ripgrep          # Fast grep alternative
    # sd: chmln/sd                    # Find & replace CLI
    # sk: skim-rs/skim                # Fuzzy finder for the terminal in Rust (similar to fzf)
    # starship: starship/starship     # Minimal, fast, customizable prompt for any shell
    # topgrade: topgrade-rs/topgrade  # Upgrade all your tools at once
    # tre: dduan/tre                  # Tree command with git awareness
    # xh: ducaale/xh                  # Friendly and fast tool for sending HTTP requests
    # xplr: sayanarijit/xplr          # Hackable, minimal, fast TUI file explorer
    # yazi: sxyazi/yazi               # Terminal file manager with image preview
    # yq: mikefarah/yq                # YAML/XML/TOML processor similar to jq
    # zellij: zellij-org/zellij       # Terminal multiplexer
    # zoxide: ajeetdsouza/zoxide      # Smarter cd command with learning
    #
```

## ℹ️ Additional Information

* This README was automatically generated on Apr 04, 2025
* Current platform: **macos/arm64**
* For more information on dotbins, visit https://github.com/basnijholt/dotbins
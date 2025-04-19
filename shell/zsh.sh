#!/usr/bin/env zsh
# dotbins - Add platform-specific binaries to PATH
_os=$(uname -s | tr '[:upper:]' '[:lower:]')
[[ "$_os" == "darwin" ]] && _os="macos"

_arch=$(uname -m)
[[ "$_arch" == "x86_64" ]] && _arch="amd64"
[[ "$_arch" == "aarch64" || "$_arch" == "arm64" ]] && _arch="arm64"

export PATH="$HOME/.config/dotbins/$_os/$_arch/bin:$PATH"

# Tool-specific configurations
# Configuration for bat
if command -v bat >/dev/null 2>&1; then
    alias bat="bat --paging=never"
    alias cat="bat --plain --paging=never"
fi

# Configuration for delta
if command -v delta >/dev/null 2>&1; then
    alias diff='delta'
fi

# Configuration for fd
if command -v fd >/dev/null 2>&1; then
    alias find='fd'
fi

# Configuration for fzf
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi

# Configuration for rg
if command -v rg >/dev/null 2>&1; then
    alias grep='rg'
fi

# Configuration for zoxide
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

# Configuration for lazygit
if command -v lazygit >/dev/null 2>&1; then
    alias lg='lazygit'
fi

# Configuration for rip
if command -v rip >/dev/null 2>&1; then
    alias rm='rip'
fi


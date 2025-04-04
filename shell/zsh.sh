#!/usr/bin/env zsh
# dotbins - Add platform-specific binaries to PATH
_os=$(uname -s | tr '[:upper:]' '[:lower:]')
[[ "$_os" == "darwin" ]] && _os="macos"

_arch=$(uname -m)
[[ "$_arch" == "x86_64" ]] && _arch="amd64"
[[ "$_arch" == "aarch64" || "$_arch" == "arm64" ]] && _arch="arm64"

export PATH="$HOME/.config/dotbins/$_os/$_arch/bin:$PATH"

# Tool-specific configurations
# Configuration for fzf
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi

# Configuration for zoxide
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi


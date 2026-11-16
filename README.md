# dotfiles

Portable cross-platform Neovim, Zellij, and shared shell configuration extracted for standalone reuse and automated deployment via [`zjy-dev/skills`](https://github.com/zjy-dev/skills) (`computer-setup`).

## Contents

- `nvim/`: LazyVim configuration with light Catppuccin customizations and locked plugin versions (`lazy-lock.json`).
- `zellij/`: Zellij configuration (`config.kdl`) with session serialization and a default 4-tab layout (`layouts/default.kdl`: AI, editor, git, shell).
- `shell/`: Shared POSIX/Bash (`env.sh`, `interactive.sh`), Zsh (`interactive.zsh`, `p10k.zsh`, `rose-blush.zsh`), and Fish (`config.fish`) startup templates using Oh My Zsh, Powerlevel10k, and Rose Blush palette colors.

## Automated Setup

Use the `computer-setup` skill from [`zjy-dev/skills`](https://github.com/zjy-dev/skills) together with [`zjy-dev/askill`](https://github.com/zjy-dev/askill) and [`zjy-dev/zj`](https://github.com/zjy-dev/zj) to install prerequisites and deploy these configs cleanly across macOS and Linux accounts.

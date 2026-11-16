# Load PATH for fish commands too; styling and initialization are interactive.
set -gx UV_PYTHON_INSTALL_DIR /opt/dev/python
set -q FNM_DIR; or set -gx FNM_DIR /opt/dev/fnm
set -q RUSTUP_HOME; or set -gx RUSTUP_HOME /opt/dev/rustup
set -q CARGO_HOME; or set -gx CARGO_HOME "$HOME/.cargo"
set -q GOPATH; or set -gx GOPATH "$HOME/go"
set -q GOBIN; or set -gx GOBIN "$GOPATH/bin"
set -q PNPM_HOME; or set -gx PNPM_HOME "$HOME/.local/share/pnpm"
set -gx EDITOR nvim
set -gx VISUAL nvim
for p in /usr/local/bin /opt/homebrew/bin /opt/homebrew/sbin /opt/dev/go/bin \
    /opt/dev/cargo/bin /opt/dev/fnm/aliases/default/bin "$GOBIN" \
    "$CARGO_HOME/bin" "$PNPM_HOME" "$PNPM_HOME/bin" "$HOME/.local/bin" /opt/dev/bin
    if test -d "$p"
        fish_add_path --move --global --path "$p"
    end
end
if set -q VIRTUAL_ENV; and test -d "$VIRTUAL_ENV/bin"
    fish_add_path --move --global --path "$VIRTUAL_ENV/bin"
end
for f in /usr/local/share/computer-setup/env.d/*.fish
    source "$f"
end
if status is-interactive
    if not test -f "$HOME/.local/state/computer-setup/profile-v1"
        /usr/local/bin/computer-setup-user --quiet
    end
    if command -q fnm
        fnm env --use-on-cd --shell fish | source
    end
    if command -q zoxide
        zoxide init fish | source
    end
    alias vim nvim
end

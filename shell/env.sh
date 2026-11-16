# Shared, quiet POSIX environment. Safe in non-interactive shells.
export UV_PYTHON_INSTALL_DIR=/opt/dev/python
export FNM_DIR="${FNM_DIR:-/opt/dev/fnm}"
export RUSTUP_HOME="${RUSTUP_HOME:-/opt/dev/rustup}"
export CARGO_HOME="${CARGO_HOME:-$HOME/.cargo}"
export GOPATH="${GOPATH:-$HOME/go}"
export GOBIN="${GOBIN:-$GOPATH/bin}"
export PNPM_HOME="${PNPM_HOME:-$HOME/.local/share/pnpm}"
export EDITOR=nvim VISUAL=nvim
for _cs_path in \
    /usr/local/bin /opt/homebrew/bin /opt/homebrew/sbin \
    /opt/dev/go/bin /opt/dev/cargo/bin \
    /opt/dev/fnm/aliases/default/bin \
    "$GOBIN" "$CARGO_HOME/bin" "$PNPM_HOME" "$PNPM_HOME/bin" \
    "$HOME/.local/bin" /opt/dev/bin
do
    [ -d "$_cs_path" ] || continue
    case ":$PATH:" in *":$_cs_path:"*) ;; *) PATH="$_cs_path:$PATH" ;; esac
done
# macOS path_helper may reorder an already-present directory after zshenv.
# Restore the shared default, while keeping an explicitly activated venv first.
if [ -d /opt/dev/bin ]; then
    case "$PATH" in /opt/dev/bin|/opt/dev/bin:*) ;; *) PATH="/opt/dev/bin:$PATH" ;; esac
fi
if [ -n "${VIRTUAL_ENV:-}" ] && [ -d "$VIRTUAL_ENV/bin" ]; then
    case "$PATH" in "$VIRTUAL_ENV/bin"|"$VIRTUAL_ENV/bin":*) ;;
        *) PATH="$VIRTUAL_ENV/bin:$PATH" ;; esac
fi
export PATH
unset _cs_path
# Scope zsh's nullglob to a function; empty env.d must be silent in SSH.
_cs_envfiles() {
    if [ -n "${ZSH_VERSION:-}" ]; then
        setopt local_options nullglob
    fi
    for _cs_env in /usr/local/share/computer-setup/env.d/*.sh; do
        [ ! -r "$_cs_env" ] || . "$_cs_env"
    done
    unset _cs_env
}
_cs_envfiles
unset -f _cs_envfiles

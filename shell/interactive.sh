# Bash startup only. Keep SSH commands and IDE bootstrap scripts quiet.
case $- in *i*) ;; *) return ;; esac
[ "${_cs_bash_loaded:-0}" = 1 ] && return
_cs_bash_loaded=1
. /usr/local/share/computer-setup/shell/env.sh
if [ ! -f "$HOME/.local/state/computer-setup/profile-v1" ]; then
    /usr/local/bin/computer-setup-user --quiet
fi
if command -v fnm >/dev/null 2>&1; then
    eval "$(fnm env --use-on-cd --shell bash)"
fi
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init bash)"
fi
alias vim=nvim

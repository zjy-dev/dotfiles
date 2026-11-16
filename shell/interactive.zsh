[[ -o interactive ]] || return
(( ${+_cs_zsh_loaded} )) && return
typeset -g _cs_zsh_loaded=1
source /usr/local/share/computer-setup/shell/env.sh
if [[ ! -f "$HOME/.local/state/computer-setup/profile-v1" ]]; then
    /usr/local/bin/computer-setup-user --quiet
fi

if [[ -r /usr/local/share/oh-my-zsh/oh-my-zsh.sh ]]; then
    export ZSH=/usr/local/share/oh-my-zsh
    ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
    ZSH_COMPDUMP="$ZSH_CACHE_DIR/zcompdump-${ZSH_VERSION}"
    mkdir -p "$ZSH_CACHE_DIR"
    ZSH_THEME="powerlevel10k/powerlevel10k"
    zstyle ':omz:update' mode disabled
    plugins=(git sudo extract colored-man-pages zoxide zsh-completions
             zsh-autosuggestions history-substring-search zsh-syntax-highlighting)
    source "$ZSH/oh-my-zsh.sh"
else
    autoload -Uz compinit
    compinit
fi
source /usr/local/share/computer-setup/shell/p10k.zsh
source /usr/local/share/computer-setup/shell/rose-blush.zsh
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
if (( $+functions[history-substring-search-up] )); then
    [[ -z "${terminfo[kcuu1]:-}" ]] || bindkey "$terminfo[kcuu1]" history-substring-search-up
    [[ -z "${terminfo[kcud1]:-}" ]] || bindkey "$terminfo[kcud1]" history-substring-search-down
fi
if (( $+commands[fnm] )); then
    eval "$(fnm env --use-on-cd --shell zsh)"
fi
if [[ -t 0 && -t 1 ]] && (( $+commands[fzf] )); then
    # Older distro fzf may not support --zsh; fail quietly.
    eval "$(fzf --zsh 2>/dev/null)"
fi
alias vim=nvim
y() {
    local tmp cwd
    tmp="$(mktemp "${TMPDIR:-/tmp}/yazi-cwd.XXXXXX")" || return
    yazi "$@" --cwd-file="$tmp"
    cwd="$(command cat -- "$tmp" 2>/dev/null)"
    rm -f -- "$tmp"
    [[ -z "$cwd" || "$cwd" == "$PWD" ]] || builtin cd -- "$cwd"
}

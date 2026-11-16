# Shell colors coordinated with ~/.p10k.zsh and Warp's Pink City theme.
# Source after Oh My Zsh and its syntax-highlighting plugin.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#8B7685'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[default]='fg=#514550'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#526B5D'
ZSH_HIGHLIGHT_STYLES[command]='fg=#526B5D'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#526B5D'
ZSH_HIGHLIGHT_STYLES[function]='fg=#526B5D'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#526B5D'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#526B5D,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#526B5D'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#70566F,underline'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#A33E59,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#496D78'
ZSH_HIGHLIGHT_STYLES[path]='fg=#70566F,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#70566F,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#496D78'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#496D78'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#496D78'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#496D78'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#8B644C'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#8B644C'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#8B644C'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#96566F'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#70566F'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#8B7685'

# BSD ls uses the terminal's ANSI palette. Lowercase removes the bold cyan.
export LSCOLORS='gxfxcxdxbxegedabagacad'
# GNU ls and zsh's completion menu can use the exact RGB palette.
export LS_COLORS='di=38;2;112;86;111:ln=38;2;150;86;111:so=38;2;82;107;93:pi=38;2;139;100;76:ex=38;2;82;107;93:bd=38;2;73;109;120:cd=38;2;73;109;120:su=38;2;163;62;89:sg=38;2;163;62;89:tw=38;2;112;86;111:ow=38;2;112;86;111:or=38;2;163;62;89'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:descriptions' format '%F{#8B7685}%d%f'
zstyle ':completion:*:warnings' format '%F{#A33E59}%d%f'

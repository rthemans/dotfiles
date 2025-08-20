eval "$(oh-my-posh init zsh --config ~/.config/omp/theme.json)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(direnv hook zsh)"
source <(fzf --zsh)

# fzf setup
export FZF_DEFAULT_OPTS='--tmux 50%,85%'

# tmux setup
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoredups:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=1000

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"


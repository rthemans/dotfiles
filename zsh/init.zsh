eval "$(oh-my-posh init zsh --config ~/.config/omp/theme.json)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(direnv hook zsh)"
source <(fzf --zsh)


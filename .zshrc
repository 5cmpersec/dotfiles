# ZSH_THEME="powerlevel10k/powerlevel10k"
# plugins=(git fzf-tab zsh-syntax-highlighting zsh-autosuggestions)

# Alias
alias pkgs="dpkg-query -f '\${binary:Package}\\n' -W | fzf --preview 'dpkg -s {1}'"
alias swapcaps="/usr/bin/setxkbmap -option \"ctrl:swapcaps\""
# FZF

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

export PATH=$PATH:/usr/local/go/bin:/home/cong.vu/go/bin:/home/cong.vu/.local/bin

source ~/dotfiles/docker.zsh
source ~/dotfiles/tmux.zsh
source ~/dotfiles/utils.zsh

# remap
/usr/bin/setxkbmap -option "ctrl:swapcaps"


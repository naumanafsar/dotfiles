  export ZSH="/home/elliot/.oh-my-zsh"

ZSH_THEME="bira"

HISTSIZE= HISTFILESIZE= #Infinite History

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Custom Aliases
alias starwars="telnet towel.blinkenlights.nl"
alias g="git"
alias gp="ps aux | grep "
alias vi="vim"
alias wt="wal --theme"
alias sa="nmcli connection show --active"
alias dn="nmcli con down id "
alias lx="cd ~/Documents/latex"
alias ctx="rm *.log *.aux"
alias ccat="highlight --out-format=ansi" # Cat but with syntax highlighting
alias yta="youtube-dl --add-metadata -xic"
source /home/elliot/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



# Themes
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences






# Custom Paths
export PATH="/home/elliot/Documents/scripts:$PATH"
export PATH="/home/elliot/Documents/scripts/basics:$PATH"
export PATH="/home/elliot/anaconda2/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="/home/elliot/.config/.scripts:$PATH"
export PATH="/home/elliot/.vim/bundle/vim-live-latex-preview/bin/:$PATH"

export ZSH="/home/elliot/.oh-my-zsh"

# #--- zsh Theme ---# #
ZSH_THEME="garyblessington"

HISTSIZE=9000000  #Infinite History
SAVEHIST=9000000

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# #--- Enabling VIM Bindings for Shell ---# #
set -o vi
bindkey -v

# #--- Custom Aliases ---# #
alias starwars="telnet towel.blinkenlights.nl"
alias g="git"
alias gcom="git commit -m "
alias gp="ps aux | grep "
alias vi="vim"
alias wt="wal --theme"
alias ctx="rm *.log *.aux"  #Clear all LaTeX logs files
alias v="nvim"

# #--- Networks ---# #
alias sa="nmcli connection show --active"
alias dn="nmcli con down id "
alias ccat="highlight --out-format=ansi" # Cat but with syntax highlighting
alias yta="youtube-dl --add-metadata -x --audio-format "mp3""
alias yt="youtube-dl -f "best[height=720]" "
alias rn="sudo /etc/init.d/networking restart"

# #--- Change Directories ---# #
alias ss="cd ~/.config/.scripts"
alias cmv="cd ~/Videos/movies"
alias dm="cd ~/Documents"
alias dw="cd ~/Downloads"
alias lx="cd ~/Documents/latex"
alias us="cd ~/Documents/unistuff"
alias tv="cd ~/Videos/tv"
alias eb="cd ~/Documents/ebooks"
alias ff="cd ~/Documents/dotfiles"
alias pc="cd ~/Pictures"
alias rmd="cd ~/Documents/rmarkdown"

# #--- Change Files ---# #
alias cvi="vim ~/.vimrc"
alias ci3="vim ~/.config/i3/config"
alias czh="vim ~/.zshrc"


# #--- Make Themes Permanent ---# #
#(cat ~/.cache/wal/sequences &)
# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# #--- Paths ---# #
source /home/elliot/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/home/elliot/anaconda2/bin:$PATH"
export PATH="/usr/local/texlive/2017/bin/x86_64-linux:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="/home/elliot/.config/.scripts:$PATH"
export PATH="/usr/share/i3blocks:$PATH"
export PATH="~/.local/bin:$PATH"
export BROWSER="firefox"
export TERMINAL="urxvt"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

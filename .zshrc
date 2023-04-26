#
# ~/.zshrc
#

alias ls="lsd"
alias l="ls"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"
alias cat="bat"
alias pacman="sudo pacman"
alias vim="nvim"
alias grep="grep --color=auto"
alias nf="neofetch --source /home/cless/.config/neofetch/archlinux-ascii.txt --color_blocks off --disable os model kernel uptime packages resolution wm theme icons"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

if [ "$USER" = "root" ]; then
	PS1='%F{red}  %~ %F{white} '
else
	PS1='%F{blue}  %~ %F{white} '
fi

# zsh-users
source /home/cless/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/cless/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

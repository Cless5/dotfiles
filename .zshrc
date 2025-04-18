#
# ~/.zshrc
#

# Git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{white}on %F{green}%b '
setopt PROMPT_SUBST

# Alias
alias ls="lsd"
alias l="ls"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"
alias cat="bat"
alias pacman="sudo pacman"
alias pls="sudo"
alias vim="nvim"
alias py="python"
alias djo="python manage.py"
alias grep="grep --color=auto"
alias nf="neofetch --source $HOME/.config/neofetch/archlinux-ascii.txt --color_blocks off --disable os model kernel uptime packages resolution wm theme icons"

# Binds
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

if [ "$USER" = "root" ]; then
	PS1=$'%F{red}󰌾 %~\n${vcs_info_msg_0_}%F{white} '
else
	RPROMPT=''
	PS1=$'%F{blue}%~ ${vcs_info_msg_0_}%F{white} '
fi

# https://github.com/zsh-users
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

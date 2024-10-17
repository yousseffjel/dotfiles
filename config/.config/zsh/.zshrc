# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

#setopt autocd # Automaticaly cd into typed directory.
#
# Colored man pages
function man() {
	env \
		LESS_TERMCAP_md=$(tput bold; tput setaf 4) \
		LESS_TERMCAP_me=$(tput sgr0) \
		LESS_TERMCAP_mb=$(tput blink) \
		LESS_TERMCAP_us=$(tput setaf 2) \
		LESS_TERMCAP_ue=$(tput sgr0) \
		LESS_TERMCAP_so=$(tput smso) \
		LESS_TERMCAP_se=$(tput rmso) \
		PAGER="${commands[less]:-$PAGER}" \
		man "$@"
}


# The following lines were added by compinstall
zstyle ':completion:*' completer _menu _expand _complete _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 10
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/yusuf/.config/zsh/.zshrc'
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/lib/node_modules/.bin:$PATH"  # For globally installed npm packages
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"



autoload -Uz compinit
compinit

# History configuration
# history file location
HISTFILE=~/.cache/zsh/history
# hisotry file length
HISTSIZE=10000
SAVEHIST=10000
# immediate append
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T]"
# add Timestamp to history
setopt EXTENDED_HISTORY
# disable duplication
setopt HIST_FIND_NO_DUPS

bindkey -v

# fast directory switching
if command -v fasd &> /dev/null
then
eval "$(fasd --init auto)"
fi


# Aliases
[[ -f "$HOME/.config/aliases" ]] && source "$HOME/.config/aliases"

# Startup commands
date +%A\ %d\ %B\ %Y\ %H:%M 

# Autosuggestion and syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zoxide
eval "$(zoxide init zsh)"

# Install Starship - curl -sS https://starship.rs/install.sh | sh

eval "$(starship init zsh)"

#neofetch
# End of lines added by compinstall

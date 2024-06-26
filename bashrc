#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#ALIAS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'

#funcionalidad
alias clip='xclip -select clipboard'
alias cld='pwd | clip'

#atajos practicas
alias practica='cd /home/gabsaws/Documents/programs/webpractice/react_fcc_portfolio'

#android project
alias proyect='cd /home/gabsaws/Projects/zonatech/pruebas/'
alias rst='npx react-native start'
#exports para proyecto android
REACT_EDITOR=nvim
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools




#PS1='[\u@\h \W]\$ '
#
#
##chat gpt config
## Define a function to generate the prompt
#generate_prompt() {
#    # Set colors for the prompt
#    local GREEN="\[\033[0;32m\]"
#    local BLUE="\[\033[0;34m\]"
#    local RESET="\[\033[0m\]"
#
#    # Get Git branch (if available)
#    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
#
#    # Get current directory
#    local dir=$(basename "$PWD")
#    local parent_dir=$(basename "$(dirname "$PWD")")
#
#    # Generate the prompt string
#    PS1="${GREEN}\u@\h ${BLUE}${parent_dir}/${dir}${RESET}"
#    if [ -n "$branch" ]; then
#        PS1="${PS1} (${branch})"
#    fi
#    PS1="${PS1} \$ "
#}
#
## Set the prompt
#PROMPT_COMMAND=generate_prompt

eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml


#turn off system beep in console
xset b off
xset b 0 0 0

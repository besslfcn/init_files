# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
 alias df='df -h'
 alias du='du -h'
 alias ls='ls --color=tty'                 # classify files in colour
 alias ll='ls -lart'                       # long list
 alias la='ls -A'                          # all but . and ..
 alias dc='docker-compose'                

# Show current git branch in command prompt

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PROMPT_COMMAND='PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\e[36m$(parse_git_branch)\e[0m\n\$ "'

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export HISTFILESIZE=
export HISTSIZE=

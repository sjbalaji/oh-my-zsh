zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fpath=(~/.zsh $fpath)
#source /etc/git-completion.bash
source /etc/git-prompt.sh
source /Users/balaji/.zsh/zsh-git-prompt/zshrc.sh
# an example prompt
autoload -U colors && colors

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m %{%F{yellow}%}%~%b$(git_super_status) %# '

ZSH_THEME_GIT_PROMPT_PREFIX=" git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

alias eq=' emacsclient -t '
alias l='ls -ltrh'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls="ls -F"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -alh'
alias lab="boot2docker start;docker run -it -v /Users/balaji/6.828/lab:/home/6.828/lab sjbalaji/6.828:v0.3"
export TERM=xterm-256color
export ANDROID_HOME=/Users/balaji/adt-bundle-mac-x86_64-20140702/sdk
alias rmapk="find . -name \*.apk -exec rm {} \;"
alias findapk="find . -name \*.apk"
alias conn="adb disconnect $IP; adb connect $IP:5555"
export ZIPALIGN=$ANDROID_HOME/build-tools/21.0.0/zipalign

plugins=(git bundler osx rake ruby)

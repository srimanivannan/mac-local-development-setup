#export variables
#unset JAVA_HOME
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.8.0_321)"
export JAVA_HOME="$(/usr/libexec/java_home -v 11.0.13)"
export SBT_HOME=$HOME/soft/sbt
export HISTCONTROL=ignoredups
export M2_HOME=$HOME/homebrew/Cellar/maven/3.8.4
export MAVEN_HOME=$M2_HOME
export ACTIVATOR_HOME=$HOME/soft/activator-1.3.2
export REDHAT_HOME=$HOME/soft/redhat
export GRADLE_HOME=$HOME/soft/gradle-7.4
#export LUAJIT_LIB=$HOME/homebrew/lib
#export LUAJIT_INC=$HOME/homebrew/include/luajit-2.0
export LUAJIT_LIB=$HOME/soft/nginx/openrestyinstalled/luajit/lib
export LUAJIT_INC=$HOME/soft/nginx/openrestyinstalled/luajit/include/luajit-2.1
export NGINX_HOME=$HOME/soft/nginx/openrestyinstalled/nginx/sbin
export OPEN_RESTY_HOME=$HOME/soft/nginx/openrestyinstalled/bin
export LOG_PREFIX=localhost
export ARIES_ENV=local

#export to PATH
export PATH=$HOME/homebrew/bin:$PATH
export PATH=$SBT_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH="$HOME/.jenv/bin:$PATH"
export PATH=$ACTIVATOR_HOME:$PATH
export PATH=$REDHAT_HOME:$PATH
export PATH=$NGINX_HOME:$PATH
export PATH=$OPEN_RESTY_HOME:$PATH

#alias
alias 'll=ls -l'
alias 'lah=ls -lah'
alias 'ltr=ls -ltr'
alias showbar='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#functions
macnetstat() {
    netstat -Watnlv | grep LISTEN | awk '{"ps -o comm= -p " $9 | getline procname;colred="\033[01;31m";colclr="\033[0m"; print colred "protocol: " colclr $1 colred " | addr.port: " colclr $4 colred " | pid: " colclr $9 colred " | name: " colclr procname;  }' | column -t -s "|"
}

#nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "/Users/msrin471/homebrew/opt/nvm/nvm.sh" ] && \. "/Users/msrin471/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/Users/msrin471/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/Users/msrin471/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#zsh-autosuggestions
source $HOME/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=green,bold,underline"

#evals
eval "$(jenv init -)"
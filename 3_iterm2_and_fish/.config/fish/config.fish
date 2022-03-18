if status is-interactive
    # Commands to run in interactive sessions can go here
end

#alias
alias 'lah=ls -lah'
alias 'ltr=ls -ltr'

set fish_greeting
#set -x JAVA_HOME (/usr/libexec/java_home -v 1.8.0_321)
set -x JAVA_HOME (/usr/libexec/java_home -v 11.0.13)
set -x SBT_HOME $HOME/soft/sbt
set -x M2_HOME $HOME/homebrew/Cellar/maven/3.8.4/libexec
set -x MAVEN_HOME $M2_HOME
set -x NVIM_HOME $HOME/soft/nvim
set -x EDITOR nvim
set -x NVM_DIR $HOME/.nvm
set -x ACTIVATOR_HOME $HOME/soft/activator-1.3.2
set -x REDHAT_HOME $HOME/soft/redhat
set -x LOG_PREFIX localhost
set -x ARIES_ENV local
set -x GRADLE_HOME $HOME/soft/gradle-7.4

#PATH
set -x PATH $PATH $HOME/homebrew/bin
set -x PATH $PATH $SBT_HOME/bin
set -x PATH $PATH $NVIM_HOME/bin
set -x PATH $PATH $NVM_DIR/versions/node/v16.13.2/bin
set -x PATH $PATH $ACTIVATOR_HOME
set -x PATH $PATH $REDHAT_HOME
set -x PATH $PATH $GRADLE_HOME/bin
alias vim nvim